<?php

/**
 * This file is part of project yeskn-studio/vmoex-framework.
 *
 * Author: Jake
 * Create: 2018-09-15 13:14:19
 */

namespace Yeskn\MainBundle\Repository;

use Doctrine\ORM\EntityRepository;
use Doctrine\ORM\NoResultException;

class OptionsRepository extends EntityRepository
{
    use RepositoryTrait;

    public function maxOnlineNum()
    {
        try {
            return (int) $value = $this->createQueryBuilder('p')
                ->select('p.value')  // 确保选择的是 'p.value' 而不是 'value'
                ->where('p.name = :name')  // 使用参数化查询
                ->setParameter('name', 'maxOnlineNum')  // 绑定参数
                ->getQuery()
                ->getSingleScalarResult();
        } catch (NoResultException $exception) {
            return 0;
        }

    }
}
