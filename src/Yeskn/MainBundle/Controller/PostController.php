<?php

/**
 * This file is part of project project yeskn-studio/vmoex-framework.
 *
 * Author: Jake
 * Create: 2018-09-14 18:06:58
 */

namespace Yeskn\MainBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Translation\TranslatorInterface;
use Yeskn\MainBundle\Entity\Comment;
use Yeskn\MainBundle\Entity\Post;
use Yeskn\MainBundle\Entity\PostBlocked;
use Yeskn\MainBundle\Utils\HtmlPurer;
use Yeskn\MainBundle\Entity\PostFavorites;
use Yeskn\MainBundle\Entity\PostThanks;
use Yeskn\Support\Http\ApiFail;
use Yeskn\Support\Http\ApiOk;

/**
 * Class PostController
 * @package Yeskn\MainBundle\Controller
 *
 * @Route("/post")
 */
class PostController extends Controller
{
    /**
     * @Route("/", name="post_list")
     *
     * @param $request
     * @return Response
     */
    public function postListAction(Request $request)
    {
        $tab = $request->get('tab');
        $page = $request->get('page', 1);
        $sortBy = $request->get('sortBy', 'com');

        return $this->forward('YesknMainBundle:Common:homeList', [], [
            'tab' => $tab,
            'page' => $page,
            'scope' => 'post',
            'sortBy' => $sortBy
        ]);
    }

    /**
     * 查看文章详情
     * @Route("/{id}", name="post_show", requirements={"id": "[1-9]\d*"})
     *
     * @param $id
     * @return Response
     */
    public function postShowAction($id)
    {
        $em = $this->get('doctrine.orm.entity_manager');
        $user = $this->getUser(); // 获取当前登录用户
        /** @var Post $post */
        $post = $this->getDoctrine()->getRepository('YesknMainBundle:Post') ->findWithoutDeleted($id);
        if (empty($post)) {
            return $this->render('@YesknMain/error.html.twig', [
                'message' => '文章不存在'
            ]);
        }
        $post->setViews(intval($post->getViews())+1);
        $em->flush();

        $commentUsers = [$post->getAuthor()->getUsername()];
        /**
         * @var Comment $comment
         */
        foreach ($post->getComments() as $comment) {
            $name = $comment->getUser()->getUsername();
            if (array_search($name, $commentUsers) === false) {
                $commentUsers[] = $name;
            }
        }

        // 查询用户是否收藏了该帖子
        $isFavorited = $this->getDoctrine()
                ->getRepository(PostFavorites::class)
                ->findOneBy([
                    'user' => $user,
                    'post' => $post,
                ]) !== null;

        $favoritesCount = $em->getRepository(PostFavorites::class)
            ->createQueryBuilder('pf')
            ->select('COUNT(pf.id)')
            ->where('pf.post = :post')
            ->setParameter('post', $post)
            ->getQuery()
            ->getSingleScalarResult();

        $isThanks = $this->getDoctrine()
                ->getRepository(PostThanks::class)
                ->findOneBy([
                    'sender' => $user,
                    'post' => $post,
                ]) !== null;


        $thanksCount = $em->getRepository(PostThanks::class)
            ->createQueryBuilder('pt')
            ->select('COUNT(pt.id)')
            ->where('pt.post = :post')
            ->setParameter('post', $post)
            ->getQuery()
            ->getSingleScalarResult();

        $response = $this->render('@YesknMain/post/show.html.twig', array(
            'post' => $post,
            'commentUsers' => json_encode($commentUsers),
            'isFavorited' => $isFavorited,
            'favoritesCount' => $favoritesCount,
            'isThanks' => $isThanks,
            'thanksCount' => $thanksCount
        ));

        return $response;
    }

    /**
     * 创建主题
     *
     * @Route("/create", name="create_post")
     * @Security("has_role('ROLE_USER')")
     *
     * @param $request
     * @return RedirectResponse|Response
     */
    public function createPost(Request $request)
    {
        if ($request->isMethod('GET')) {

            $tabs = $this->getDoctrine()->getRepository('YesknMainBundle:Tab')->findBy(['level' => 2]);

            return $this->render('@YesknMain/post/create.html.twig', [
                'tabs' => $tabs
            ]);
        }

        $title = strip_tags($request->get('title'));
        $content = $request->get('content');

        $content = nl2br($content);

        if (empty($title) or empty(strip_tags($content))) {
            return new JsonResponse(['ret' => 0, 'msg' => '内容为空!']);
        }

        $htmlPure = new HtmlPurer($this->container);

        $content = $htmlPure->pureHtmlText($content)->getResult(true);

        $tab = $this->getDoctrine()->getRepository('YesknMainBundle:Tab')
            ->findOneBy(['alias' => $request->get('tab')]);
        $post = new Post();

        $post->setTitle($title);
        $post->setContent($content);
        $post->setViews(mt_rand(1, 3));
        $post->setIsTop(false);
        $post->setAuthor($this->getUser());
        $post->setSummary('');
        $post->setTab($tab);
        $post->setStatus('published');

        $date = new \DateTime();

        $post->setCreatedAt($date);
        $post->setUpdatedAt($date);

        $em = $this->getDoctrine()->getManager();

        $em->persist($post);
        $em->flush();

        return $this->redirectToRoute('post_show', ['id' => $post->getId()]);
    }

    /**
     * 上传图片
     *
     * @Route("/images", methods={"POST"})
     * @Security("has_role('ROLE_USER')")
     *
     * @param $request
     * @return Response
     */
    public function uploadImage(Request $request)
    {
        $name = $request->get('name', 'file');
        $file = $request->files->get($name);

        // 设置最大文件大小为2MB
        $maxFileSize = 2 * 1024 * 1024; // 2MB in bytes

        if ($file->getSize() > $maxFileSize) {
            return new JsonResponse([
                'errno' => '1',
                'error' => 'File size exceeds 2MB limit.'
            ], 400); // 返回400 Bad Request状态码
        }

        $extension = $file->guessExtension();
        $fileName = 'upload/images/' . time() . mt_rand(1000, 9999) . '.' . $extension;

        $targetPath = $this->getParameter('kernel.project_dir') . '/web/' . $fileName;

        $fs = new Filesystem();
        $fs->copy($file->getRealPath(), $targetPath);

        return new JsonResponse([
            'errno' => '0',
            'data' => [
                $this->getParameter('assets_base_url') . '/' . $fileName
            ]
        ]);
    }

    /**
     *@Route("/{id}/thank", name="post_thank", methods={"POST"})
     */
    public function thankAction(Request $request, Post $post, TranslatorInterface $trans)
    {
        $user = $this->getUser(); // 获取当前登录用户

        // 检查用户是否已经感谢过该帖子
        $existingThanks = $this->getDoctrine()
            ->getRepository(PostThanks::class)
            ->findOneBy([
                'sender' => $user,
                'post' => $post,
            ]);

        if ($existingThanks) {
            // 如果用户已经感谢过该帖子
            return new ApiFail($trans->trans( 'already_thanked'));
        }

        $em = $this->getDoctrine()->getManager();

        // 获取帖子的作者
        $receiver = $post->getAuthor();

        if (!$receiver) {
            // 如果帖子没有作者，返回错误消息
            return new ApiFail($trans->trans( 'Post has no author'));
        }

        // 检查用户是否试图感谢自己的帖子
        if ($receiver === $user) {
            return new ApiFail($trans->trans( 'You cannot thank yourself'));
        }

        // 创建新的感谢记录
        $thanks = new PostThanks();
        $thanks->setSender($user);
        $thanks->setReceiver($receiver); // 设置接收感谢的用户
        $thanks->setPost($post);

        $em->persist($thanks);
        $em->flush();

        return new ApiOk();
    }

    /**
     * 屏蔽帖子操作
     *
     * @Route("/{id}/block", name="post_block")
     */
    public function blockAction(Request $request, Post $post, TranslatorInterface $trans)
    {
        $user = $this->getUser(); // 获取当前登录的用户

        // 检查用户是否已经屏蔽了该帖子
        $existingBlock = $this->getDoctrine()
            ->getRepository(PostBlocked::class)
            ->findOneBy([
                'user' => $user,
                'post' => $post
            ]);

        $em = $this->getDoctrine()->getManager();

        if ($existingBlock) {
            // 如果已经屏蔽过，返回提示
            return new ApiFail($trans->trans('already_blocked'));
        }
        // 获取帖子的作者
        $author = $post->getAuthor();

        // 检查用户是否试图感谢自己的帖子
        if ($author === $user) {
            return new ApiFail($trans->trans('不能自己屏蔽自己'));
        }

        // 添加屏蔽记录
        $block = new PostBlocked();
        $block->setUser($user);
        $block->setPost($post);

        $em->persist($block);
        $em->flush();

        return new ApiOk();
    }
}
