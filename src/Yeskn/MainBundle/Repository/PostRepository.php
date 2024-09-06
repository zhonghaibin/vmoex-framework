<?php

/**
 * This file is part of project project yeskn-studio/vmoex-framework.
 *
 * Author: Jake
 * Create: 2018-09-14 16:13:28
 */

namespace Yeskn\MainBundle\Repository;

use Doctrine\ORM\EntityRepository;
use Doctrine\ORM\QueryBuilder;
use Yeskn\MainBundle\Entity\Post;
use Yeskn\MainBundle\Entity\Tab;

class PostRepository extends EntityRepository
{
    use RepositoryTrait;
    /**
     * @param Tab $tab
     * @param $sort
     * @param $page [$pageNo, $pageSize]
     * @return Post[]
     */
    public function getIndexList($tabObj, $sort, $pagination, $user = null)
    {
        list($page, $pageSize) = $pagination;

        // 创建帖子查询
        $qb = $this->createQueryBuilder('p')
            ->setFirstResult(($page - 1) * $pageSize)
            ->setMaxResults($pageSize)
            ->andWhere('p.deletedAt IS NULL') // 排除软删除的帖子
            ->andWhere('p.status = :status')
            ->setParameter('status', 'published');
        // 遍历并添加所有排序条件
        foreach ($sort as $field => $direction) {
            $qb->addOrderBy('p.' . $field, $direction);
        }

        if ($tabObj) {
            $qb->andWhere('p.tab = :tab')
                ->setParameter('tab', $tabObj);
        }

        if ($user) {
            $qb->leftJoin('YesknMainBundle:PostBlocked', 'pb', 'WITH', 'pb.post = p AND pb.user = :user')
                ->andWhere('pb.id IS NULL')
                ->setParameter('user', $user);
        }

        $query = $qb->getQuery();
        $posts = $query->getResult();

        // 创建计数查询
        $countQuery = $this->createQueryBuilder('p')
            ->select('COUNT(p.id)')
            ->andWhere('p.deletedAt IS NULL')
            ->andWhere('p.status = :status')
            ->setParameter('status', 'published');

        if ($tabObj) {
            $countQuery->andWhere('p.tab = :tab')
                ->setParameter('tab', $tabObj);
        }

        if ($user) {
            $countQuery->leftJoin('YesknMainBundle:PostBlocked', 'pb', 'WITH', 'pb.post = p AND pb.user = :user')
                ->andWhere('pb.id IS NULL')
                ->setParameter('user', $user);
        }

        // 返回总数
        $count = $countQuery->getQuery()->getSingleScalarResult();

        return [$count, $posts];
    }


    /**
     * @param Tab|null $tab
     * @return QueryBuilder
     * @throws \InvalidArgumentException
     */
    private function createQueryPostBuilder($tab)
    {
        $em = $this->_em;
        $qb = $this->createQueryBuilder('p')->where('p.isDeleted = false');

        if ($tab) {
            $tabCond = $qb->expr()->orX();
            $tabCond->add($qb->expr()->eq('p.tab', $tab->getId()));

            if ($tab->getLevel() == 1) {
                $subQuery =  $em->createQueryBuilder()
                    ->select('t')
                    ->from('YesknMainBundle:Tab', 't')
                    ->where('t.parent = :parent')
                    ->andWhere('t.level = 2')
                    ->getDQL();
                $tabCond->add($qb->expr()->in('p.tab', $subQuery));
                $qb->setParameter('parent', $tab);
            }

            $qb->andWhere($tabCond);
        }

        return $qb;
    }

    /**
     * @return Post[]
     */
    public function queryLatest()
    {
        return $this->getEntityManager()
            ->createQuery('
                SELECT p
                FROM YesknMainBundle:Post p
                WHERE p.createdAt <= :now
                ORDER BY p.createdAt ASC
            ')
            ->setParameter('now',new \DateTime())
            ->getResult()
            ;
    }

    public function testQuery()
    {
        return $this->createQueryBuilder('e')
            ->leftJoin('e.author','o')
            ->getQuery()
            ->getResult();
    }

    /**
     * @param $word
     * @param int $cursor
     * @param int $limit
     * @return array
     * @throws \Doctrine\ORM\NonUniqueResultException
     */
    public function queryPosts($word, $cursor = 0, $limit = 15)
    {
        $qb = $this->createQueryBuilder('p')
            ->select('p')
            ->where('p.title LIKE :title')->setParameter('title', "%$word%")
            ->orWhere('p.content LIKE :content')->setParameter('content', "%$word%");

        $total = $qb->select('COUNT(p)')->getQuery()->getSingleScalarResult();

        $results = $qb->select('p')
            ->orderBy('p.createdAt', 'DESC')
            ->setFirstResult($cursor)
            ->setMaxResults($limit)
            ->getQuery()
            ->getResult();

        return [$results, $total];
    }

    /**
     * @return int
     * @throws \Doctrine\ORM\NonUniqueResultException
     */
    public function countPost()
    {
        return $this->createQueryBuilder('p')
            ->select('COUNT(p)')
            ->getQuery()
            ->getSingleScalarResult();
    }


    public function findWithoutDeleted($id)
    {
        return $this->createQueryBuilder('p')
            ->where('p.id = :id')
            ->andWhere('p.deletedAt IS NULL')
            ->setParameter('id', $id)
            ->andWhere('p.status = :status')
            ->setParameter('status', 'published')
            ->getQuery()
            ->getOneOrNullResult();
    }


}
