<?php

namespace Yeskn\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="Yeskn\MainBundle\Repository\UserLoginLogRepository")
 * @ORM\Table(name="user_login_log")
 */
class UserLoginLog
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="Yeskn\MainBundle\Entity\User")
     * @ORM\JoinColumn(nullable=false, onDelete="CASCADE")
     */
    private $user;

    /**
     * @ORM\Column(type="datetime")
     */
    private $loginAt;

    /**
     * @ORM\Column(type="string", length=45, nullable=true)
     */
    private $ipAddress;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $userAgent;

    public function getId()
    {
        return $this->id;
    }

    public function getUser()
    {
        return $this->user;
    }

    public function setUser($user)
    {
        $this->user = $user;
        return $this;
    }

    public function getLoginAt()
    {
        return $this->loginAt;
    }

    public function setLoginAt(\DateTime $loginAt)
    {
        $this->loginAt = $loginAt;
        return $this;
    }

    public function getIpAddress()
    {
        return $this->ipAddress;
    }

    public function setIpAddress(?string $ipAddress)
    {
        $this->ipAddress = $ipAddress;
        return $this;
    }

    public function getUserAgent()
    {
        return $this->userAgent;
    }

    public function setUserAgent(?string $userAgent)
    {
        $this->userAgent = $userAgent;
        return $this;
    }
}
