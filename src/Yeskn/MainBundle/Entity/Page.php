<?php

/**
 * This file is part of project yeskn-studio/vmoex-framework.
 *
 * Author: Jake
 * Create: 2018-09-17 22:38:46
 */

namespace Yeskn\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Table(name="page")
 * @ORM\Entity(repositoryClass="Yeskn\MainBundle\Repository\PageRepository")
 */
class Page
{
    const NAME = '页面';

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
     * @ORM\Column(name="title", type="string")
     */
    private $title;

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
     * @var string
     * @ORM\Column(name="summary", type="string")
     */
    private $summary = '';



    /**
     * @var integer
     * @ORM\Column(name="status", type="boolean")
     */
    private $status = true;

    /**
     * @var string
     * @ORM\Column(name="uri", type="string")
     */
    private $uri;

    /**
     * @var string
     * @ORM\Column(name="format", type="string")
     */
    private $format = 'html';

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
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * @param string $title
     */
    public function setTitle($title)
    {
        $this->title = $title;
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
     * @return string
     */
    public function getSummary()
    {
        return $this->summary;
    }

    /**
     * @param string $summary
     */
    public function setSummary($summary)
    {
        $this->summary = $summary;
    }



    /**
     * @return int
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * @param int $status
     */
    public function setStatus($status)
    {
        $this->status = $status;
    }

    /**
     * @return string
     */
    public function getFormat()
    {
        return $this->format;
    }

    /**
     * @param string $format
     */
    public function setFormat($format)
    {
        $this->format = $format;
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
     * @return string
     */
    public function getUri()
    {
        return $this->uri;
    }

    /**
     * @param string $uri
     */
    public function setUri($uri)
    {
        $this->uri = $uri;
    }
}
