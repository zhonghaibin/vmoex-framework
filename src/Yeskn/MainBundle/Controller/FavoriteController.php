<?php
namespace Yeskn\MainBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Translation\TranslatorInterface;
use Yeskn\MainBundle\Entity\Post;
use Yeskn\Support\AbstractController;
use Yeskn\Support\Http\ApiFail;
use Yeskn\Support\Http\ApiOk;
use Yeskn\MainBundle\Entity\PostFavorites;

/**
 * Class FavoriteController
 * @package Yeskn\MainBundle\Controller
 *
 * @Security("has_role('ROLE_USER')")
 */
class FavoriteController extends AbstractController
{
    /**
     *@Route("/post/{id}/favorite", name="post_favorite", methods={"POST"})
     */
    public function favoriteAction(Request $request, Post $post, TranslatorInterface $trans)
    {
        $user = $this->getUser();

        // 检查是否已经收藏
        $favorite = $this->getDoctrine()
            ->getRepository(PostFavorites::class)
            ->findOneBy(['user' => $user, 'post' => $post]);

        if ($favorite) {
            // 如果已经收藏，则取消收藏
            $em = $this->getDoctrine()->getManager();
            $em->remove($favorite);
            $em->flush();
            return new ApiOk();
        }

        // 添加收藏
        $favorite = new PostFavorites();
        $favorite->setUser($user);
        $favorite->setPost($post);

        $em = $this->getDoctrine()->getManager();
        $em->persist($favorite);
        $em->flush();

        return new ApiOk();
    }
}
