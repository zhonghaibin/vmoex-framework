<?php


namespace Yeskn\MainBundle\Repository;

use Doctrine\ORM\EntityRepository;

class UserLoginLogRepository extends EntityRepository
{
    use RepositoryTrait;

    public function getAllWeeklySummary(): array
    {
        $conn = $this->getEntityManager()->getConnection();

        $sql = "SELECT WEEKDAY(login_at) + 1 AS weekday, COUNT(*) AS total
                FROM user_login_log
                GROUP BY weekday
                ORDER BY weekday ASC";

        $rows = $conn->fetchAll($sql); // Doctrine2.x 用 fetchAll()

        $result = array_fill(0, 7, 0);

        foreach ($rows as $row) {
            $weekday = (int) $row['weekday']; // 1=周一 .. 7=周日
            $result[$weekday - 1] = (int) $row['total'];
        }

        return $result;
    }
}
