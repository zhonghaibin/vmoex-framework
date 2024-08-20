<?php

// 引入必要的类库和文件
use Workerman\Worker;
use Workerman\Lib\Timer;
use PHPSocketIO\SocketIO;
use Symfony\Component\Yaml\Yaml;

include __DIR__ . '/../vendor/autoload.php'; // 自动加载Composer依赖

// 初始化用于存储用户连接信息的数组
$uidConnectionMap = array();

$last_online_count = 0; // 上次在线用户数
$last_online_page_count = 0; // 上次在线页面数
$max_online_count = 0;

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

// 创建SocketIO服务器实例
$sender_io = new SocketIO($socketPort, $context);

// 监听新连接事件
$sender_io->on('connection', function (\PHPSocketIO\Socket $socket) {
    // 处理用户登录事件
    $socket->on('login', function ($data) use ($socket) {
        global $uidConnectionMap, $last_online_count, $last_online_page_count;

        $user = $data['username']; // 获取用户名
        $token = $data['token']; // 获取Token

        // 验证Token
        if ($token) {
            $redisToken = getRedis()->get('socket:'. $user);
            if (empty($redisToken) || $redisToken != $token) {
                return ; // 如果Token无效，终止登录流程
            }
        }

        // 如果Socket已经绑定了用户ID，直接返回
        if (isset($socket->uid)) {
            return;
        }

        // 初始化用户连接计数器
        if (!isset($uidConnectionMap[$user])) {
            $uidConnectionMap[$user] = 0;
        }

        // 增加用户连接数
        ++$uidConnectionMap[$user];
        $socket->join($user); // 将用户加入对应的房间
        $socket->uid = $user; // 绑定用户ID到Socket

        // 向客户端发送当前在线用户和页面统计信息
        $data = [
            'onlineCount' => $last_online_count,
            'pageCount' => $last_online_page_count
        ];

        $socket->emit('update_online_count', json_encode($data));
    });

    // 处理用户断开连接事件
    $socket->on('disconnect', function () use ($socket) {
        if (!isset($socket->uid)) {
            return; // 如果Socket没有绑定用户ID，直接返回
        }
        global $uidConnectionMap;

        // 减少用户连接数，如果连接数为0，则移除用户
        if (--$uidConnectionMap[$socket->uid] <= 0) {
            unset($uidConnectionMap[$socket->uid]);
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
                $to = @$_POST['to']??'';
                $from = @$_POST['data']['from']??''; // 消息的发起者
                // 如果指定了目标用户，将消息推送给该用户
                if ($to) {
                    // 检查消息发起者与接收者是否相同
                    if ($to !== $from) {
                        $sender_io->to($to)->emit($_POST['event'], $_POST['data']);
                    }
                } else {
                    // 如果没有指定目标用户，则将消息发送给所有用户
                    foreach ($uidConnectionMap as $uid => $connections) {
                        if ($uid !== $from) { // 排除发起者自己
                            $sender_io->to($uid)->emit($_POST['event'], $_POST['data']);
                        }
                    }
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
    Timer::add(1, function () {
        global $uidConnectionMap, $last_online_count, $last_online_page_count, $sender_io,$max_online_count;


        $online_count_now = count($uidConnectionMap); // 当前在线用户数
        $online_page_count_now = array_sum($uidConnectionMap); // 当前在线页面数

        // 检查是否需要更新历史最大在线人数
        if ($online_count_now > $max_online_count) {
            $max_online_count = $online_count_now;
            // 在这里可以将最大值保存到持久存储中
            saveMaxOnlineCount($max_online_count);
        }


        // 如果在线用户数或页面数发生变化，广播更新
        if ($last_online_count != $online_count_now
            || $last_online_page_count != $online_page_count_now
        ) {
            $data = [
                'onlineCount' => $online_count_now,
                'pageCount' => $online_page_count_now,
                'maxOnlineCount' => $max_online_count // 将历史最大在线人数传递给客户端
            ];

            $sender_io->emit('update_online_count', json_encode($data)); // 广播更新

            $last_online_count = $online_count_now; // 更新上次记录的在线用户数
            $last_online_page_count = $online_page_count_now; // 更新上次记录的在线页面数
        }
    });


});


/**
 * 保存历史最大在线人数到文件中
 * @param int $count
 */
function saveMaxOnlineCount($count) {
    $file = __DIR__ . '/../var/max_online_count';
    file_put_contents($file, $count);
}

// 如果没有定义GLOBAL_START，启动所有Worker
if (!defined('GLOBAL_START')) {
    Worker::runAll();
}
