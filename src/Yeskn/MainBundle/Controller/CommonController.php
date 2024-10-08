<?php

/**
 * This file is part of project yeskn-studio/vmoex-framework.
 *
 * Author: Jaggle
 * Create: 2018-09-22 11:36:13
 */

namespace Yeskn\MainBundle\Controller;

use Symfony\Component\HttpFoundation\Cookie;
use Symfony\Component\HttpFoundation\Request;
use Yeskn\Support\AbstractController;

class CommonController extends AbstractController
{
    public function homeListAction(Request $request)
    {
        $tab = $request->get('tab');
        $page = $request->get('page', 1);
        $scope = $request->get('scope');
        $sortBy = $request->get('sortBy');

        $pagesize = 25;

        if (empty($tab)) {
            $tab = $request->cookies->get('_tab');
        }

        if (empty($tab)) {
            $tab = 'all';
        }

        // 排序逻辑，首先按照 isTop 排序，其次按照 createdAt 排序，确保非置顶帖按时间倒序
        if ($sortBy == 'pub') {
            $sort = ['isTop' => 'DESC', 'createdAt' => 'DESC']; // 按发布时间倒序排列
        } else if ($tab == 'hot') {
            $sort = ['isTop' => 'DESC', 'views' => 'DESC']; // 热门排序，浏览量倒序排列
        } else {
            $sort = ['isTop' => 'DESC', 'updatedAt' => 'DESC']; // 默认更新时间倒序
        }

        $tabObj = null;
        $tabChild = null;

        if ($tab && !in_array($tab, ['hot', 'all'])) {
            $tabObj = $this->getDoctrine()->getRepository('YesknMainBundle:Tab')
                ->findOneBy(['alias' => $tab]);

            if (empty($tabObj)) {
                return $this->errorResponse('嘤嘤嘤，板块不存在呢~');
            }

            $parentId = $tabObj->getId();
            $tabChild = $this->getDoctrine()->getRepository('YesknMainBundle:Tab')
                ->findByParentId($parentId);
        }

        $user = $this->getUser(); // 获取当前用户

        // 查询帖子列表，按照置顶和发布时间排序
        list($count, $posts) = $this->getDoctrine()->getRepository('YesknMainBundle:Post')
            ->getIndexList($tabObj, $sort, [$page, $pagesize], $user); // 传递用户以排除屏蔽帖子

        $allTabs = $this->getDoctrine()->getRepository('YesknMainBundle:Tab')
            ->findBy(['level' => 1]);

        $pageData['allPage'] = ceil($count / $pagesize);
        $pageData['currentPage'] = $page;

        $params = [
            'posts' => $posts,
            'tab' => $tab,
            'currentTab' => $tabObj,
            'tabs' => $allTabs,
            'sortBy' => $sortBy,
            'pageData' => $pageData,
            'tabChild' => $tabChild
        ];

        if ($scope == 'home') {
            $tpl = '@YesknMain/default/index.html.twig';
        } else {
            $tpl = '@YesknMain/post/index.html.twig';
        }

        $response = $this->render($tpl, $params);

        if ($tabObj && $tabObj->getLevel() == 1) {
            $response->headers->setCookie(new Cookie('_tab', $tab));
        }

        if ($tab == 'all' || $tab == 'hot') {
            $response->headers->setCookie(new Cookie('_tab', $tab));
        }

        return $response;


    }
}
