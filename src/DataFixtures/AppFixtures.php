<?php

namespace App\DataFixtures;

use DateInterval;
use Faker\Factory;
use App\Entity\User;
use Faker\Generator;
use App\Entity\Demand;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class AppFixtures extends Fixture
{
    private Generator $faker;

    private UserPasswordHasherInterface $hasher;

    public function __construct(UserPasswordHasherInterface $hasher)
    {
        $this->faker = Factory::create('fr_FR');
        $this->hasher = $hasher;
    }
    public function load(ObjectManager $manager): void
    {
        /**
         * Generate fake users, put it in a tab so it can be reused to generate the other entities related to User.
         */
        $users = [];
        for ($i = 0; $i< 20; ++$i) {
            $user = new User();
            $user->setEmail($this->faker->email());
            $user->setRoles([]);
            $user->setPassword($this->hasher->hashPassword(
                $user,
                'password'
            ));
            $user->setPseudo($this->faker->firstName());
            $user->setLocation($this->faker->region());
            $user->setPhoto($this->faker->imageUrl(200, 200, 'photo', true));
            $users[] = $user;
            $manager->persist($user);
        }

        /**
         * Generate fake demands, put it in a tab so it can be reused to generate the other entities related to User.
         */
        $users = [];
        for ($i = 0; $i< 20; ++$i) {
            $user = new User();
            $user->setEmail($this->faker->email());
            $user->setRoles([]);
            $user->setPassword($this->hasher->hashPassword(
                $user,
                'password'
            ));
            $user->setPseudo($this->faker->firstName());
            $user->setLocation($this->faker->departmentName());
            $user->setPhoto($this->faker->imageUrl(200, 200, 'photo', true));
            $users[] = $user;
            $manager->persist($user);
        }

        $demands = [];
        for ($i = 0; $i< 20; ++$i) {

            
            // Generated two random values, the value of the modified date must be less than the created date
            // so the random value for modified is between 0 and the value generated for the created date      
            $rand_weeks_created = mt_rand(0, 365);
            $rand_weeks_modified = mt_rand(0,$rand_weeks_created);

            $demand = new Demand();
            $demand->setTitle($this->faker->sentence(3));
            $demand->setText($this->faker->text());
            $demand->setPhoto($this->faker->imageUrl(200, 200, 'photo', true));
            $demand->setDateCreated($this->faker->dateTimeBetween('-'.$rand_weeks_created.' days','-'.$rand_weeks_modified.' days'));
            $demand->setDateModified($this->faker->dateTimeBetween('-'.$rand_weeks_modified.' days'));
            $demand->setDeleted($this->faker->boolean());
            $demand->setUser($users[mt_rand(0, count($users) - 1)]);  
            $demands[] = $demand;
            $manager->persist($demand);
        }
        $manager->flush();
    }
}
