<?php
// src/EventListener/LoginListener.php
namespace Yeskn\MainBundle\EventListener;

use Predis\Client as RedisClient;
use Symfony\Component\Security\Http\Logout\LogoutSuccessHandlerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;
use Symfony\Component\Routing\RouterInterface;
use Symfony\Component\HttpFoundation\RedirectResponse;

class LogoutHandler  implements LogoutSuccessHandlerInterface
{

    private $redis;
    private $tokenStorage;

    public function __construct(RedisClient $redis, TokenStorageInterface $tokenStorage,RouterInterface $router)
    {

        $this->redis = $redis;
        $this->tokenStorage = $tokenStorage;
        $this->router = $router;
    }


    public function onLogoutSuccess(Request $request)
    {

        $token = $this->tokenStorage->getToken();
        if ($token) {
            $username= $token->getUsername();
            if ($username) {
                // 删除 Redis 中的 token_secret
                $this->redis->set('token_secret:' .$username,null);
            }
        }

        // 返回一个重定向响应，用户退出登录后会被重定向到登录页面或首页
        $url = $this->router->generate('login'); // 'login' 是登录页面的路由名称
        return new RedirectResponse($url);

    }


}
