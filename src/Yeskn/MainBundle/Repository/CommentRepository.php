<?php

/**
 * This file is part of project project yeskn-studio/vmoex-framework.
 *
 * Author: Jake
 * Create: 2018-09-14 16:19:03
 */

namespace Yeskn\MainBundle\Repository;

use Doctrine\ORM\EntityRepository;

class CommentRepository extends EntityRepository
{
    use RepositoryTrait;
    /**
     * @return mixed
     * @throws \Doctrine\ORM\NoResultException
     * @throws \Doctrine\ORM\NonUniqueResultException
     */
    public function countComment()
    {
        return $this->createQueryBuilder('p')
            ->select('COUNT(p)')
            ->getQuery()
            ->getSingleScalarResult();
    }

    public function getAllWeeklySummary(): array
    {
        $conn = $this->getEntityManager()->getConnection();

        $sql = "SELECT WEEKDAY(created_at) + 1 AS weekday, COUNT(*) AS total
            FROM comment
            GROUP BY weekday
            ORDER BY weekday ASC";

        $rows = $conn->fetchAll($sql);

        $result = array_fill(0, 7, 0);

        foreach ($rows as $row) {
            $weekday = (int) $row['weekday']; // 1=周一 ... 7=周日
            $result[$weekday - 1] = (int) $row['total'];
        }

        return $result;
    }
}
