<?php
namespace Yeskn\AdminBundle\Controller;

use Symfony\Component\Cache\Adapter\RedisAdapter;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Yeskn\MainBundle\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use Yeskn\Support\AbstractController;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Predis\Client as RedisClient;
/**
 * Class UserController
 * @package Yeskn\AdminBundle\Controller
 *
 * @Security("has_role('ROLE_ADMIN')")
 */
class UserController extends AbstractController
{
    /**
     * @Route("/update-status", name="update_status", methods={"POST"})
     */
    public function updateStatusAction(Request $request, EntityManagerInterface $em,  RedisClient $redis)
    {
        $userId = $request->get('id');

        // 查找用户
        $user = $em->getRepository(User::class)->find($userId);

        if (!$user) {
            return new JsonResponse(['error' => '用户不存在'], 404);
        }

        // 切换状态
        $newStatus = $user->getIsBlocked() ? 0 : 1;
        $user->setIsBlocked($newStatus);

        // 保存到数据库
        $em->persist($user);
        $em->flush();

        // 返回新的状态
        return new JsonResponse([
            'newStatus' => $this->statusLabel($newStatus)
        ]);
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