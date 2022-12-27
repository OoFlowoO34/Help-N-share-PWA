<?php

namespace App\Tests\unit;

use App\Entity\User;
use App\Entity\Demand;
use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;

class DemandTest extends KernelTestCase
{
    public function getDemand($demandId)
    {
        $demand = static::getContainer()->get('doctrine.orm.entity_manager')->find(Demand::class, $demandId);
        return $demand;
    }

    public function getUser($userId)
    {
        $user = static::getContainer()->get('doctrine.orm.entity_manager')->find(User::class, $userId);
        return $user;
    }

    public function setNewEntity($u)
    {
        $user = $this->getUser($u);
        return(
        (new Demand())
        ->setUser($user)
        ->setTitle("12345678910")
        ->setText("12345678910")
        ->setPhoto("photo")
        ->setDeleted(0)
        ->setDateModified(new \DateTimeImmutable())
        ->setDateCreated(new \DateTimeImmutable())
        );
    }

    public function testEntityIsValid(): void
    {
        $container = static::getContainer();

        $demand = $this->setNewEntity(1);

        $errors = $container->get('validator')->validate($demand);
        $this->assertCount(0,$errors);
    }

    public function testEntityIsNotValid(): void
    {
        $container = static::getContainer();

        $demand = $this->setNewEntity(1);
        $demand->setTitle("");
        $demand->setText("");

        $errors = $container->get('validator')->validate($demand);
        $this->assertCount(4,$errors);
    }

    public function testIsRelated(): void
    {
        $userRelatedAsk = $this->getUser(1);
        $userRelatedReply = $this->getUser(2);
        $userNotRelated = $this->getUser(3);

        
        $demand = $this->getDemand(1);
        
        $this->assertTrue($demand->isRelated($userRelatedAsk) == true);
        $this->assertTrue($demand->isRelated($userRelatedReply) == true);
        $this->assertTrue($demand->isRelated($userNotRelated) == false);
    }
}
