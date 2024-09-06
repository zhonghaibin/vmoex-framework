<?php

namespace Yeskn\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * PostThanks
 *
 * @ORM\Table(name="post_thanks")
 * @ORM\Entity(repositoryClass="Yeskn\MainBundle\Repository\PostThinksRepository")
 */

/**
 * @ORM\Entity
 * @ORM\Table(name="post_thanks")
 */
class PostThanks
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;


    /**
     * @ORM\ManyToOne(targetEntity="Yeskn\MainBundle\Entity\User")
     * @ORM\JoinColumn(nullable=false)
     */
    private $sender;

    /**
     * @ORM\ManyToOne(targetEntity="Yeskn\MainBundle\Entity\User")
     * @ORM\JoinColumn(nullable=false)
     */

    private $receiver;

    /**
     * @ORM\ManyToOne(targetEntity="Yeskn\MainBundle\Entity\Post")
     * @ORM\JoinColumn(nullable=false)
     */
    private $post;  // 被感谢的帖子

    /**
     * @ORM\Column(type="datetime")
     */
    private $createdAt;

    public function __construct()
    {
        $this->createdAt = new \DateTime();
    }

    // Getter and Setter for post

    public function getPost()
    {
        return $this->post;
    }

    public function setPost(Post $post)
    {
        $this->post = $post;
        return $this;
    }

    // Getter and Setter for createdAt

    public function getCreatedAt()
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTime $createdAt)
    {
        $this->createdAt = $createdAt;
        return $this;
    }

    // Getters and setters...

    public function getSender()
    {
        return $this->sender;
    }

    public function setSender($sender)
    {
        $this->sender = $sender;
    }

    public function getReceiver()
    {
        return $this->receiver;
    }

    public function setReceiver($receiver)
    {
        $this->receiver = $receiver;
    }
    /**
     * Get id.
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }
}
