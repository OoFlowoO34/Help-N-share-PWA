<?php

namespace App\Repository;

use App\Entity\Demand;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Demand>
 *
 * @method Demand|null find($id, $lockMode = null, $lockVersion = null)
 * @method Demand|null findOneBy(array $criteria, array $orderBy = null)
 * @method Demand[]    findAll()
 * @method Demand[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class DemandRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Demand::class);
    }

    public function save(Demand $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Demand $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }


   public function search($search): array
   {
       return $this->createQueryBuilder('d')
            ->innerJoin('d.user', 'u')
            ->andWhere('d.title LIKE :search OR d.text LIKE :search OR u.location LIKE :search')
            ->setParameter('search', '%'.$search.'%')
            ->orderBy('d.date_created', 'DESC')
            ->getQuery()
            ->getResult()
       ;
   }





        // Same as :
        /*
       SELECT * FROM demand d
       INNER JOIN user u ON d.id = u.id
       WHERE  d.title LIKE '%'.$search.'%'
           OR d.text LIKE '%'.$search.'%'
           OR u.location LIKE '%'.$search.'%'
       ORDER BY d.date_created, 'DESC'
        */



//    /**
//     * @return Demand[] Returns an array of Demand objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('d')
//            ->andWhere('d.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('d.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Demand
//    {
//        return $this->createQueryBuilder('d')
//            ->andWhere('d.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
