<?php
// src/EventListener/LoginListener.php
namespace Yeskn\MainBundle\EventListener;

use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;
use Yeskn\MainBundle\Entity\User;
use Symfony\Component\HttpKernel\Event\GetResponseEvent;
use Symfony\Component\HttpFoundation\RedirectResponse;

class UserBlockListener
{
    private $tokenStorage;
    private $entityManager;

    private $router;

    public function __construct(TokenStorageInterface $tokenStorage, EntityManagerInterface $entityManager,$router)
    {
        $this->tokenStorage = $tokenStorage;
        $this->entityManager = $entityManager;
        $this->router = $router;
    }

    public function onKernelRequest(GetResponseEvent $event)
    {
        $request = $event->getRequest();

        // 获取当前用户
        $token = $this->tokenStorage->getToken();
        if (!$token || !$token->getUser() instanceof User) {
            return; // 如果用户未登录或不是 User 实体，直接返回
        }

        $user = $token->getUser();
        $userId = $user->getId();

        // 查找用户
        $user = $this->entityManager->getRepository(User::class)->find($userId);

        if ($user && $user->getIsBlocked()) {
            // 用户被拉黑，强制退出
            $this->tokenStorage->setToken(null);
            // 清除会话
            $session = $request->getSession();
            $session->invalidate();

            // 重定向到登录页面
            $loginUrl = $this->router->generate('fos_user_security_login'); // 这里使用 FOSUserBundle 的登录路由名
            $response = new RedirectResponse($loginUrl);

            // 设置响应
            $event->setResponse($response);
        }
    }
}
