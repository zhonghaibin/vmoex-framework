<?php

/**
 * This file is part of project yeskn-studio/vmoex-framework.
 *
 * Author: Jake
 * Create: 2018-09-16 12:39:38
 */

namespace Yeskn\AdminBundle\CrudEvent;

use Yeskn\MainBundle\Entity\Announce;

class ProcessEditAnnounceEvent extends AbstractCrudEntityEvent
{
    /**
     * @var Announce
     */
    protected $entity;

    public function execute()
    {
        $entityObj = $this->entity;

        $en = strip_tags($entityObj->getEn(),
            'b, strong,i,em,font,small,bold,span,p'
        );

        $entityObj->setEn($en);

        $jp = strip_tags($entityObj->getJp(),
            'b, strong,i,em,font,small,bold,span,p'
        );

        $entityObj->setJp($jp);

        $zh_TW = strip_tags($entityObj->getZhTW(),
            'b, strong,i,em,font,small,bold,span,p'
        );

        $entityObj->setZhTW($zh_TW);

        $zh_CN = strip_tags($entityObj->getZhCN(),
            'b, strong,i,em,font,small,bold,span,p'
        );

        $entityObj->setZhCN($zh_CN);
    }
}
