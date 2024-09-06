<?php

namespace Yeskn\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * PostFavorites
 *
 * @ORM\Table(name="post_favorites")
 * @ORM\Entity(repositoryClass="Yeskn\MainBundle\Repository\PostFavoritesRepository")
 */

/**
 * @ORM\Entity
 * @ORM\Table(name="post_favorites")
 */
class PostFavorites
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

    private $user;

    /**
     * @ORM\ManyToOne(targetEntity="Yeskn\MainBundle\Entity\Post")
     * @ORM\JoinColumn(nullable=false)
     */
    private $post;



    /**
     * @ORM\Column(type="datetime")
     */
    private $createdAt;

    public function __construct()
    {
        $this->createdAt = new \DateTime();
    }

    // Getter and Setter for user

    public function getUser()
    {
        return $this->user;
    }

    public function setUser(User $user)
    {
        $this->user = $user;
        return $this;
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
