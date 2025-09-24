<?php

/**
 * This file is part of project yeskn-studio/vmoex-framework.
 *
 * Author: Jake
 * Create: 2018-10-25 01:39:54
 */

namespace Yeskn\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Table(name="announce")
 * @ORM\HasLifecycleCallbacks()
 * @ORM\Entity(repositoryClass="Yeskn\MainBundle\Repository\AnnounceRepository")
 */
class Announce
{
    const NAME = '公告';

    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     * @ORM\Column(name="zh_CN", type="text")
     */
    private $zh_CN;

    /**
     * @var string
     * @ORM\Column(name="en", type="text")
     */
    private $en;

    /**
     * @var string
     * @ORM\Column(name="jp", type="text")
     */
    private $jp;

    /**
     * @var string
     * @ORM\Column(name="zh_TW", type="text")
     */
    private $zh_TW;


    /**
     * @var boolean
     * @ORM\Column(name="`show`", type="boolean", options={"default":false})
     */
    private $show;

    /**
     * @var \DateTime
     * @ORM\Column(name="created_at", type="datetime")
     */
    private $createdAt;

    /**
     * @var \DateTime
     * @ORM\Column(name="updated_at", type="datetime")
     */
    private $updatedAt;

    /**
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param int $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }


    /**
     * @return string
     */
    public function getZhCN()
    {
        return $this->zh_CN;
    }

    /**
     * @param string $zh_CN
     */
    public function setZhCN($zh_CN)
    {
        $this->zh_CN = $zh_CN;
    }

    /**
     * @return string
     */
    public function getEn()
    {
        return $this->en;
    }

    /**
     * @param string $en
     */
    public function setEn($en)
    {
        $this->en = $en;
    }

    /**
     * @return string
     */
    public function getJp()
    {
        return $this->jp;
    }

    /**
     * @param string $jp
     */
    public function setJp($jp)
    {
        $this->jp = $jp;
    }

    /**
     * @return string
     */
    public function getZhTW()
    {
        return $this->zh_TW;
    }

    /**
     * @param string $zh_TW
     */
    public function setZhTW($zh_TW)
    {
        $this->zh_TW = $zh_TW;
    }
    /**
     * @return bool
     */
    public function isShow()
    {
        return $this->show;
    }

    /**
     * @param bool $show
     */
    public function setShow($show)
    {
        $this->show = $show;
    }

    /**
     * @return \DateTime
     */
    public function getCreatedAt()
    {
        return $this->createdAt;
    }

    /**
     * @param \DateTime $createdAt
     */
    public function setCreatedAt($createdAt)
    {
        $this->createdAt = $createdAt;
    }

    /**
     * @return \DateTime
     */
    public function getUpdatedAt()
    {
        return $this->updatedAt;
    }

    /**
     * @param \DateTime $updatedAt
     */
    public function setUpdatedAt($updatedAt)
    {
        $this->updatedAt = $updatedAt;
    }

    /**
     * @ORM\PrePersist()
     */
    public function onCreate()
    {
        $this->setCreatedAt(new \DateTime());
        $this->setUpdatedAt(new \DateTime());
    }

    /**
     * Get show.
     *
     * @return bool
     */
    public function getShow()
    {
        return $this->show;
    }
}
