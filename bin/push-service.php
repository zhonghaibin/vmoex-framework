<?php

// 引入必要的类库和文件
use Workerman\Worker;
use Workerman\Lib\Timer;
use PHPSocketIO\SocketIO;
use Symfony\Component\Yaml\Yaml;

include __DIR__ . '/../vendor/autoload.php'; // 自动加载Composer依赖

// 初始化用于存储用户连接信息的数组
$uidConnectionMap = array();

$sessionMap = array(); // 用于跟踪每个会话

// 初始化游客和会员计数器
$guestCount = 0;
$memberCount = 0;

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
        try {
            $redis = new \Predis\Client($parameters['redis_dsn']);
        } catch (\Exception $e) {
            var_dump($e->getMessage());
            exit;
        }
    }
    return $redis; // 返回Redis实例
}

// 创建SocketIO服务器实例
$sender_io = new SocketIO($socketPort, $context);

// 监听新连接事件
$sender_io->on('connection', function (\PHPSocketIO\Socket $socket) {


    $socket->on('login', function ($data) use ($socket) {
        global $uidConnectionMap, $guestCount, $memberCount, $sessionMap;;


        $user = $data['username'];
        $token = $data['token'];

        // 获取会话ID（可以使用socket ID作为唯一标识符）
        $sessionId = $socket->id;


        // 新连接默认作为游客
        if (!isset($sessionMap[$sessionId])) {
            if(isset($uidConnectionMap[$user])){
                    return;
            }
            $guestCount++;
            $sessionMap[$sessionId] = ['uid' => null, 'loggedIn' => false];
        }


        if (!$token) {
            return;
        }


        $redisToken = getRedis()->get('token_secret:' . $user);
        if (empty($redisToken) || $redisToken != $token) {
            return;
        }

        if (isset($socket->uid)) {
            return; // 如果已经登录，则直接返回
        }


        // 防止重复添加连接
        if (isset($uidConnectionMap[$user]) && $uidConnectionMap[$user] > 0) {
            return;
        }


        if (isset($sessionMap[$socket->id]['uid'])) {
            return; // 如果已经登录，则直接返回
        }

        // 如果当前是游客，转换为会员
        if (!$sessionMap[$socket->id]['loggedIn']) {
            $guestCount--;
            $memberCount++;
            $sessionMap[$socket->id]['loggedIn'] = true;
        }
        $sessionMap[$socket->id]['uid'] = $user;
        $socket->join($user);
        $socket->uid = $user;
        updateOnlineCount();
    });

    $socket->on('disconnect', function () use ($socket) {
        global $guestCount, $memberCount, $uidConnectionMap, $sessionMap;

        $sessionId = $socket->id;
        if (isset($sessionMap[$sessionId])) {
            $uid = $sessionMap[$sessionId]['uid'];
            if ($uid) {
                // 断开连接时减少连接计数
                if (--$uidConnectionMap[$uid] <= 0) {
                    unset($uidConnectionMap[$uid]);
                    $memberCount--; // 减少会员数

                }
            } else {
                $guestCount--; // 减少游客数
            }
            unset($sessionMap[$sessionId]);
        }
    });

});


// 监听worker启动事件，启动HTTP推送服务
$sender_io->on('workerStart', function () {
    global $socketPushPort;
    $inner_http_worker = new Worker('http://0.0.0.0:' . $socketPushPort);

    // 处理HTTP推送请求
    $inner_http_worker->onMessage = function (Workerman\Connection\ConnectionInterface $http_connection) {
        global $uidConnectionMap;
        $_POST = $_POST ? $_POST : $_GET; // 支持POST和GET方式

        // 根据请求类型处理推送
        switch (@$_POST['type']) {
            case 'publish':
                global $sender_io;
                $to = @$_POST['to'] ?? '';
                $from = @$_POST['data']['from'] ?? ''; // 消息的发起者
                // 如果指定了目标用户，将消息推送给该用户
                if ($to) {
                    // 检查消息发起者与接收者是否相同
                    if ($to !== $from) {
                        $sender_io->to($to)->emit($_POST['event'], $_POST['data']);
                    }
                } else {
                    $sender_io->emit($_POST['event'], $_POST['data']);
                }

                // 返回推送结果
                if ($to && !isset($uidConnectionMap[$to])) {
                    return $http_connection->send('offline'); // 用户不在线
                } else {
                    return $http_connection->send('ok'); // 推送成功
                }
        }
        return $http_connection->send('fail'); // 推送失败
    };

    $inner_http_worker->listen(); // 启动HTTP推送服务

    // 定时任务，每秒检查并广播在线用户统计
    Timer::add(5, function () {
        updateOnlineCount();
    });

});

function updateOnlineCount(): void
{
    global $guestCount, $memberCount, $sender_io, $max_online_count;

    $max_online_count = loadMaxOnlineCount();

    if ($guestCount+$memberCount > $max_online_count) {
        $max_online_count = $guestCount+$memberCount;
        saveMaxOnlineCount($max_online_count);
    }

    // 只发送新的在线数据，不再比较和广播上次的数据
    $data = [
        'guestCount' => $guestCount, // 新增游客数
        'memberCount' => $memberCount, // 新增会员数
        'maxOnlineCount' => $max_online_count,// 最大在线人数
    ];

    $sender_io->emit('update_online_count', json_encode($data));
}

/**
 * 保存历史最大在线人数到文件中
 * @param int $count
 */
function saveMaxOnlineCount($count)
{
    $file = __DIR__ . '/../var/max_online_count';
    file_put_contents($file, $count);
}

function loadMaxOnlineCount()
{
    $file = __DIR__ . '/../var/max_online_count';
    if (file_exists($file)) {
        return (int)file_get_contents($file);
    }
    return 0;
}

// 如果没有定义GLOBAL_START，启动所有Worker
if (!defined('GLOBAL_START')) {
    Worker::runAll();
}
