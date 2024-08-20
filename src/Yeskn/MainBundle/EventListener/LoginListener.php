<?php
// src/EventListener/LoginListener.php
namespace Yeskn\MainBundle\EventListener;

use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Security\Http\Event\InteractiveLoginEvent;

class LoginListener
{
    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }

    public function onSecurityInteractiveLogin(InteractiveLoginEvent $event)
    {
        // 获取当前登录的用户
        $user = $event->getAuthenticationToken()->getUser();

        if ($user) {
            $user->setLoginAt(new \DateTime());
            // 保存更改
            $this->entityManager->persist($user);
            $this->entityManager->flush();
        }
    }
}
