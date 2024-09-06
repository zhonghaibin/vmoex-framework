<?php
// src/EventListener/LoginListener.php
namespace Yeskn\MainBundle\EventListener;

use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Security\Http\Event\InteractiveLoginEvent;
use Predis\Client as RedisClient;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Component\Security\Core\Exception\CustomUserMessageAuthenticationException;
use Symfony\Component\Translation\TranslatorInterface;

class LoginListener
{
    private $entityManager;
    private $redis;

    private $container;

    private $trans;

    public function __construct(EntityManagerInterface $entityManager, RedisClient $redis, ContainerInterface $container,TranslatorInterface $trans)
    {
        $this->entityManager = $entityManager;
        $this->redis = $redis;
        $this->container = $container;
        $this->trans = $trans;
    }

    public function onSecurityInteractiveLogin(InteractiveLoginEvent $event)
    {
        // 获取当前登录的用户
        $user = $event->getAuthenticationToken()->getUser();
        // 检查用户是否被拉黑
        if ($user->getIsBlocked()) {
            throw new CustomUserMessageAuthenticationException($this->trans->trans('已被拉黑'));
        }

        if ($user instanceof UserInterface) {
            // 更新登录时间
            $user->setLoginAt(new \DateTime());
            $this->entityManager->persist($user);
            $this->entityManager->flush();

            // 生成并保存 Token 到 Redis
            $token = $this->generateToken($user);
            $this->redis->set('token_secret:' . $user->getUsername(), $token);
        }
    }

    private function generateToken(UserInterface $user)
    {
        // 从参数中获取配置的URL
        $secret = $this->container->getParameter('token_secret');
        return hash('sha256', $user->getUsername() . $secret . time());
    }
}
