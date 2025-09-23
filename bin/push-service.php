<?php

// 引入必要的类库和文件
use Workerman\Worker;
use Workerman\Lib\Timer;
use PHPSocketIO\SocketIO;
use Symfony\Component\Yaml\Yaml;

include __DIR__ . '/../vendor/autoload.php'; // 自动加载Composer依赖

$user = 'www-data';
$userInfo = posix_getpwnam($user);

if ($userInfo) {
    posix_setgid($userInfo['gid']);  // 设置组 ID
    posix_setuid($userInfo['uid']);  // 设置用户 ID
} else {
    die("用户 $user 不存在");
}

// 初始化用于存储用户连接信息的数组
$uidConnectionMap = array();        // 注册用户连接映射
$guestConnectionMap = array();      // 游客连接映射 [guest_id => connection_count]
$userLastActive = array();          // 记录用户最后活动时间
$guestLastActive = array();         // 记录游客最后活动时间

$last_online_count = 0;             // 上次在线用户数（注册用户）
$last_online_page_count = 0;        // 上次在线页面数（注册用户）
$last_guest_count = 0;              // 上次在线游客数
$last_guest_page_count = 0;         // 上次在线游客页面数
$max_online_count = loadMaxOnlineCount();

$socketPort = 3120; // Socket.IO服务监听的默认端口
$socketPushPort = 3121; // HTTP推送服务监听的默认端口

// 加载并解析配置文件
$parameters = Yaml::parseFile(__DIR__ . '/../app/config/parameters.yml');
$parameters = $parameters['parameters'];

// 检查是否配置了SSL证书，配置SSL上下文
if (!empty($parameters['socket_local_cert'])) {
    $context = array(
        'ssl' => [
            'local_cert' => $parameters['socket_local_cert'], // 本地证书路径
            'local_pk' => $parameters['socket_local_pk'], // 私钥路径
            'verify_peer' => false // 不验证对等方证书
        ]
    );
} else {
    $context = []; // 如果没有SSL证书，使用空上下文
}

// 从配置的socket_host中提取端口号，如果存在则覆盖默认端口
if (preg_match('/:(\d+)\/?$/', $parameters['socket_host'], $mat)) {
    $socketPort = $mat[1];
}

// 从配置的socket_push_host中提取端口号，如果存在则覆盖默认端口
if (preg_match('/:(\d+)\/?$/', $parameters['socket_push_host'], $mat)) {
    $socketPushPort = $mat[1];
}

/**
 * 获取Redis客户端实例
 *
 * @return \Predis\Client Redis客户端实例
 */
function getRedis()
{
    global $parameters;

    // 静态变量用于缓存Redis实例
    static $redis = null;

    // 如果Redis实例不存在或未连接，创建一个新的连接
    if (empty($redis) || $redis->isConnected() == false) {
        $redis = new \Predis\Client($parameters['redis_dsn']);
    }

    return $redis; // 返回Redis实例
}

/**
 * 生成唯一的游客ID
 * @return string
 */
function generateGuestId()
{
    return 'guest_' . uniqid() . '_' . mt_rand(1000, 9999);
}

// 创建SocketIO服务器实例
$sender_io = new SocketIO($socketPort, $context);

// 监听新连接事件
$sender_io->on('connection', function (\PHPSocketIO\Socket $socket) {
    // 为新连接分配游客ID（默认身份）
    $guestId = generateGuestId();
    $socket->guestId = $guestId;

    // 初始化游客连接
    global $guestConnectionMap, $guestLastActive;
    $guestConnectionMap[$guestId] = 1;
    $guestLastActive[$guestId] = time();

    // 将游客加入游客房间
    $socket->join('guests');

    error_log("新游客连接: {$guestId}, 总游客数: " . count($guestConnectionMap));

    // 处理用户登录事件
    $socket->on('login', function ($data) use ($socket) {
        global $uidConnectionMap, $last_online_count, $last_online_page_count, $userLastActive;
        global $guestConnectionMap, $guestLastActive;

        $user = $data['username'] ?? ''; // 获取用户名
        $token = $data['token'] ?? ''; // 获取Token

        // 验证输入参数
        if (empty($user) || empty($token)) {
            error_log("登录失败: 用户名或Token为空");
            return;
        }

        // 防止重复登录处理
        if (isset($socket->uid)) {
            error_log("登录失败: 用户 {$user} 已登录");
            return;
        }

        // 验证Token
        $redisToken = getRedis()->get('token_secret:' . $user);
        if (empty($redisToken) || $redisToken != $token) {
            error_log("登录失败: Token验证失败 - 用户: {$user}");
            $socket->emit('auth_failed', 'Token验证失败');
            return;
        }

        // 设置连接数限制（每个用户最多10个连接）
        $maxConnectionsPerUser = 10;
        if (isset($uidConnectionMap[$user]) && $uidConnectionMap[$user] >= $maxConnectionsPerUser) {
            error_log("登录失败: 用户 {$user} 连接数超过限制");
            $socket->emit('error', '连接数超过限制');
            return;
        }

        // 如果当前是游客身份，先清理游客数据
        if (isset($socket->guestId)) {
            $guestId = $socket->guestId;

            // 减少游客连接数
            if (isset($guestConnectionMap[$guestId]) && $guestConnectionMap[$guestId] > 0) {
                $guestConnectionMap[$guestId]--;
                if ($guestConnectionMap[$guestId] <= 0) {
                    unset($guestConnectionMap[$guestId]);
                    if (isset($guestLastActive[$guestId])) {
                        unset($guestLastActive[$guestId]);
                    }
                }
            }

            // 从游客房间移除
            $socket->leave('guests');
            unset($socket->guestId);

            error_log("游客 {$guestId} 登录为用户 {$user}");
        }

        // 初始化用户连接计数器
        if (!isset($uidConnectionMap[$user])) {
            $uidConnectionMap[$user] = 0;
        }

        // 增加用户连接数
        $uidConnectionMap[$user]++;

        // 记录用户最后活动时间
        $userLastActive[$user] = time();

        // 将用户加入对应的房间
        $socket->join($user);

        // 绑定用户ID到Socket
        $socket->uid = $user;

        // 记录登录成功
        error_log("用户登录成功: {$user}, 当前连接数: " . $uidConnectionMap[$user] . ", 总用户数: " . count($uidConnectionMap));

        // 向客户端发送当前在线统计信息
        $data = [
            'onlineCount' => count($uidConnectionMap),
            'pageCount' => array_sum($uidConnectionMap),
            'guestCount' => count($guestConnectionMap),
            'guestPageCount' => array_sum($guestConnectionMap),
            'maxOnlineCount' => loadMaxOnlineCount(),
            'totalOnlineCount' => count($uidConnectionMap) + count($guestConnectionMap),
            'totalPageCount' => array_sum($uidConnectionMap) + array_sum($guestConnectionMap)
        ];

        $socket->emit('update_online_count', json_encode($data));
    });

    // 处理心跳检测
    $socket->on('ping', function () use ($socket) {
        global $userLastActive, $guestLastActive;

        if (isset($socket->uid)) {
            // 更新注册用户最后活动时间
            $userLastActive[$socket->uid] = time();
        } elseif (isset($socket->guestId)) {
            // 更新游客最后活动时间
            $guestLastActive[$socket->guestId] = time();
        }

        $socket->emit('pong', json_encode(['status' => 'ok']));
    });

    // 处理用户断开连接事件
    $socket->on('disconnect', function () use ($socket) {
        global $uidConnectionMap, $userLastActive, $guestConnectionMap, $guestLastActive;

        $disconnectType = '';
        $disconnectId = '';

        // 处理注册用户断开连接
        if (isset($socket->uid)) {
            $uid = $socket->uid;
            $disconnectType = '用户';
            $disconnectId = $uid;

            // 原子操作：减少用户连接数
            if (isset($uidConnectionMap[$uid]) && $uidConnectionMap[$uid] > 0) {
                $uidConnectionMap[$uid]--;

                // 如果连接数为0，清理用户数据
                if ($uidConnectionMap[$uid] <= 0) {
                    unset($uidConnectionMap[$uid]);
                    if (isset($userLastActive[$uid])) {
                        unset($userLastActive[$uid]);
                    }
                } else {
                    // 如果还有连接，只清理最后活动时间（让其他连接继续维持）
                    if (isset($userLastActive[$uid])) {
                        unset($userLastActive[$uid]);
                    }
                }
            }

            // 从用户房间中移除
            $socket->leave($uid);
            unset($socket->uid);
        }
        // 处理游客断开连接
        elseif (isset($socket->guestId)) {
            $guestId = $socket->guestId;
            $disconnectType = '游客';
            $disconnectId = $guestId;

            // 减少游客连接数
            if (isset($guestConnectionMap[$guestId]) && $guestConnectionMap[$guestId] > 0) {
                $guestConnectionMap[$guestId]--;

                if ($guestConnectionMap[$guestId] <= 0) {
                    unset($guestConnectionMap[$guestId]);
                    if (isset($guestLastActive[$guestId])) {
                        unset($guestLastActive[$guestId]);
                    }
                }
            }

            // 从游客房间中移除
            $socket->leave('guests');
            unset($socket->guestId);
        } else {
            return; // 如果没有身份信息，直接返回
        }

        // 记录断开连接
        error_log("{$disconnectType}断开连接: {$disconnectId}, 剩余用户数: " . count($uidConnectionMap) . ", 剩余游客数: " . count($guestConnectionMap));
    });
});

// 监听worker启动事件，启动HTTP推送服务
$sender_io->on('workerStart', function () {
    global $socketPushPort;
    $inner_http_worker = new Worker('http://0.0.0.0:' . $socketPushPort);

    // 处理HTTP推送请求
    $inner_http_worker->onMessage = function (Workerman\Connection\ConnectionInterface $http_connection) {
        global $uidConnectionMap, $guestConnectionMap;
        $_POST = $_POST ? $_POST : $_GET; // 支持POST和GET方式

        // 记录推送请求
        error_log("HTTP推送请求: " . json_encode($_POST));

        // 根据请求类型处理推送
        switch (@$_POST['type']) {
            case 'publish':
                global $sender_io;
                $to = @$_POST['to'] ?? '';
                $event = @$_POST['event'] ?? '';
                $data = @$_POST['data'] ?? '';

                // 验证必要参数
                if (empty($event)) {
                    return $http_connection->send('fail: event参数缺失');
                }

                // 如果指定了目标用户，将消息推送给该用户
                if ($to) {
                    // 检查消息发起者与接收者是否相同
                    $sender_io->to($to)->emit($event, $data);

                    // 返回推送结果
                    if (!isset($uidConnectionMap[$to])) {
                        return $http_connection->send('offline'); // 用户不在线
                    } else {
                        return $http_connection->send('ok'); // 推送成功
                    }
                } else {
                    // 如果没有指定目标用户，则将消息发送给所有用户
                    $sender_io->emit($event, $data);
                    return $http_connection->send('ok'); // 推送成功
                }

            case 'get_stats':
                // 获取统计信息
                $stats = getOnlineStats();
                return $http_connection->send(json_encode($stats));

            default:
                return $http_connection->send('fail: 未知的请求类型');
        }
    };

    $inner_http_worker->listen(); // 启动HTTP推送服务

    // 定时任务：每秒检查并广播在线用户统计
    Timer::add(2, function () {
        global $uidConnectionMap, $last_online_count, $last_online_page_count, $sender_io, $max_online_count;
        global $guestConnectionMap, $last_guest_count, $last_guest_page_count;

        $online_count_now = count($uidConnectionMap); // 当前在线用户数
        $online_page_count_now = array_sum($uidConnectionMap); // 当前在线页面数
        $guest_count_now = count($guestConnectionMap); // 当前在线游客数
        $guest_page_count_now = array_sum($guestConnectionMap); // 当前在线游客页面数

        // 检查是否需要更新历史最大在线用户数（只记录注册用户）
        $stats_updated = false;
        if ($online_count_now > $max_online_count) {
            $max_online_count = $online_count_now;
            saveMaxOnlineCount($max_online_count);
            $stats_updated = true;
            error_log("更新历史最大在线用户数: {$max_online_count}");
        }

        // 如果在线统计发生变化，广播更新
        if ($last_online_count != $online_count_now
            || $last_online_page_count != $online_page_count_now
            || $last_guest_count != $guest_count_now
            || $last_guest_page_count != $guest_page_count_now
            || $stats_updated
        ) {
            $data = [
                'onlineCount' => $online_count_now,
                'pageCount' => $online_page_count_now,
                'guestCount' => $guest_count_now,
                'guestPageCount' => $guest_page_count_now,
                'maxOnlineCount' => $max_online_count,
                'totalOnlineCount' => $online_count_now + $guest_count_now,
                'totalPageCount' => $online_page_count_now + $guest_page_count_now
            ];

            $sender_io->emit('update_online_count', json_encode($data)); // 广播更新

            // 记录统计变化
            error_log("在线统计更新: 用户={$online_count_now}({$online_page_count_now}页), 游客={$guest_count_now}({$guest_page_count_now}页), 总计=" . ($online_count_now + $guest_count_now));

            // 更新上次记录的值
            $last_online_count = $online_count_now;
            $last_online_page_count = $online_page_count_now;
            $last_guest_count = $guest_count_now;
            $last_guest_page_count = $guest_page_count_now;
        }
    });

    // 定时任务：清理超时不活动的用户和游客（每5分钟执行一次）
    Timer::add(300, function () {
        global $uidConnectionMap, $userLastActive, $guestConnectionMap, $guestLastActive;

        $timeout = 600; // 10分钟超时（考虑心跳间隔）
        $now = time();
        $cleanedUsers = 0;
        $cleanedGuests = 0;

        // 清理超时用户
        foreach ($userLastActive as $user => $lastActive) {
            if ($now - $lastActive > $timeout) {
                if (isset($uidConnectionMap[$user])) {
                    unset($uidConnectionMap[$user]);
                    $cleanedUsers++;
                }
                unset($userLastActive[$user]);
            }
        }

        // 清理超时游客
        foreach ($guestLastActive as $guestId => $lastActive) {
            if ($now - $lastActive > $timeout) {
                if (isset($guestConnectionMap[$guestId])) {
                    unset($guestConnectionMap[$guestId]);
                    $cleanedGuests++;
                }
                unset($guestLastActive[$guestId]);
            }
        }

        if ($cleanedUsers > 0 || $cleanedGuests > 0) {
            error_log("清理超时用户: {$cleanedUsers} 个用户, {$cleanedGuests} 个游客被清理");
        }
    });

    // 定时任务：记录详细统计信息（每分钟执行一次）
    Timer::add(60, function () {
        global $uidConnectionMap, $guestConnectionMap;
        $online_count = count($uidConnectionMap);
        $online_page_count = array_sum($uidConnectionMap);
        $guest_count = count($guestConnectionMap);
        $guest_page_count = array_sum($guestConnectionMap);

        error_log("详细统计 - 用户: {$online_count}({$online_page_count}页), 游客: {$guest_count}({$guest_page_count}页), 总计: " . ($online_count + $guest_count));
    });
});

/**
 * 获取在线统计信息
 * @return array
 */
function getOnlineStats()
{
    global $uidConnectionMap, $guestConnectionMap;

    $online_count = count($uidConnectionMap);
    $online_page_count = array_sum($uidConnectionMap);
    $guest_count = count($guestConnectionMap);
    $guest_page_count = array_sum($guestConnectionMap);

    return [
        'users' => [
            'count' => $online_count,
            'pages' => $online_page_count,
            'max_count' => loadMaxOnlineCount()
        ],
        'guests' => [
            'count' => $guest_count,
            'pages' => $guest_page_count
        ],
        'total' => [
            'count' => $online_count + $guest_count,
            'pages' => $online_page_count + $guest_page_count
        ],
        'timestamp' => time()
    ];
}

/**
 * 保存历史最大在线用户数到文件中
 * @param int $count
 */
function saveMaxOnlineCount($count) {
    $file = __DIR__ . '/../var/max_online_count';
    if (file_put_contents($file, $count) === false) {
        error_log("保存最大在线用户数失败: {$count}");
    }
}

/**
 * 加载历史最大在线用户数
 * @return int
 */
function loadMaxOnlineCount() {
    $file = __DIR__ . '/../var/max_online_count';
    if (file_exists($file)) {
        $count = (int) file_get_contents($file);
        return max(0, $count); // 确保返回非负数
    }
    return 0;
}

// 如果没有定义GLOBAL_START，启动所有Worker
if (!defined('GLOBAL_START')) {
    Worker::runAll();
}