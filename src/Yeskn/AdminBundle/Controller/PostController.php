<?php

namespace Yeskn\AdminBundle\Controller;

use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Yeskn\MainBundle\Entity\Post;

/**
 * Class PostController
 * @Route("/post")
 * @Security("has_role('ROLE_ADMIN')")
 */
class PostController extends Controller
{
    /**
     * @Route("/create", methods={"GET", "POST"})
     * @param $request Request
     * @return Response
     */
    public function createAction(Request $request)
    {
        $post = new Post();

        $form = $this->createForm('Yeskn\MainBundle\Form\PostType', $post);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();

            $post->setCreatedAt(new \DateTime());
            $post->setUpdatedAt(new \DateTime());
            $post->setStatus('published');
            $post->setSummary('');

            $entityManager->persist($post);
            $entityManager->flush();

            $this->addFlash('success', '创建帖子成功');
            return $this->redirectToRoute('admin_list', ['entity' => 'post']);
        }

        return $this->render('@YesknAdmin/post/create.html.twig', array(
            'post' => $post,
            'form' => $form->createView(),
        ));
    }

    /**
     * @Route("/edit", name="yeskn_admin_post_edit")
     *
     * @param $request
     * @return Response
     */
    public function editAction(Request $request)
    {
        $post = $this->getDoctrine()->getRepository('YesknMainBundle:Post')
            ->find($request->get('id'));
        
        $form = $this->createForm('Yeskn\MainBundle\Form\PostType', $post);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            
            $post->setUpdatedAt(new \DateTime());

            $entityManager->flush();

            $this->addFlash('success', '编辑帖子成功');
            return $this->redirectToRoute('admin_list', ['entity' => 'post']);
        }

        return $this->render('@YesknAdmin/post/create.html.twig', [
            'title' => '编辑帖子',
            'post' => $post,
            'form' => $form->createView(),
        ]);
    }


    /**
     * @Route("/delete/{id}", name="yeskn_admin_post_delete", methods={"GET", "POST"})
     *
     * @param $request
     * @return Response
     */
    public function deleteAction(Post $post)
    {

        $em = $this->getDoctrine()->getManager();

        // 软删除帖子
        $post->setDeletedAt(new \DateTime());

        $em->persist($post);
        $em->flush();

        return new JsonResponse(['status' => 1, 'message' => '删除成功']);
    }


    /**
     * @Route("/restore/{id}", name="yeskn_admin_post_restore", methods={"GET", "POST"})
     *
     * @param $request
     * @return Response
     */
    public function restoreAction(Post $post)
    {

        $em = $this->getDoctrine()->getManager();

        // 恢复帖子
        $post->setDeletedAt(null);

        $em->persist($post);
        $em->flush();

        return new JsonResponse(['status' => 1, 'message' => '回复成功']);
    }

}
