<?php

/**
 * This file is part of project yeskn-studio/vmoex-framework.
 *
 * Author: Jake
 * Create: 2018-09-18 19:49:13
 */

namespace Yeskn\AdminBundle\CrudEvent;

use Symfony\Component\Routing\RouterInterface;
use Symfony\Component\Translation\TranslatorInterface;
use Yeskn\MainBundle\Entity\User;
use Yeskn\MainBundle\Twig\GlobalValue;
use Symfony\Bridge\Twig\Extension\AssetExtension;

class StartRenderUserListEvent extends AbstractCrudListEvent
{
    /**
     * @var User[]
     */
    protected $list;

    private $globalValue;

    private $translator;

    public function __construct(RouterInterface $router, GlobalValue $globalValue, TranslatorInterface $translator
    , AssetExtension $asset){
        $this->router = $router;
        $this->globalValue = $globalValue;
        $this->translator = $translator;
        $this->asset = $asset;
    }

    public function execute()
    {
        $ids = $result = [];

        foreach ($this->list as $tag) {
            $ids[] = $tag->getId();

            // 状态按钮，点击后发送 Ajax 请求修改状态
            $statusButton = sprintf(
                '<button class="status-toggle" data-id="%d">%s</button>',
                $tag->getId(),
                $this->translator->trans($this->statusLabel($tag->getIsBlocked()))
            );

            $result[] = [
                $tag->getId(),
                $this->linkColumn($tag->getUsername(), 'member_home', ['username' => $tag->getUsername()]),
                $this->imgColumn($tag->getAvatar(), 50),
                $tag->getNickname(),
                $tag->getEmail(),
                $this->globalValue->ago($tag->getRegisterAt()),
                $this->globalValue->ago($tag->getLoginAt()),
                $tag->getGold(),
                $statusButton // 使用按钮替代文字状态显示
            ];
        }

        return [
            'columns' => ['ID', '用户名', '头像', '昵称', '邮箱', '注册时间', '登录时间', '金币', '状态'],
            'column_width' => [0 => 5, 2 => 10, 4 => 15, 6 => 5],
            'list' => $result,
            'ids' => $ids
        ];
    }

    public function statusLabel($status)
    {
        $mappings = [
            '1' => '已拉黑',
            '0' => '正常'
        ];

        return $mappings[$status];
    }
}
