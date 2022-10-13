<?php

namespace App\DataFixtures;

use DateInterval;
use Faker\Factory;
use App\Entity\User;
use Faker\Generator;
use App\Entity\Demand;
use App\Entity\Proposal;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
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
         * Generate fake Users, put it in a tab so it can be reused to generate the other related entities.
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
            $user->setPhoto($this->faker->imageUrl(100, 100, 'photo', true));
            $users[] = $user;
            $manager->persist($user);
        }




        $photosTab = ["Capture-d-ecran-2022-09-27-a-15-29-55-1-6348110e27b1e.png","ERGO-Tour-white-634810f718280.png","kisspng-sass-style-sheet-language-cascading-style-sheets-l-sass-5b4621924f1d20-6170390015313227703241-6348171582274.png"];
        /**
         * Generate fake Demands
         */
    
        for ($i = 0; $i< 20; ++$i) {

            // Generated two random values, the value of the modified date must be less than the created date
            // so the random value for modified is between 0 and the value generated for the created date      
            $rand_days_created = mt_rand(0, 365);
            $rand_days_modified = mt_rand(0,$rand_days_created);

            $demand = new Demand();
            $demand->setTitle($this->faker->sentence(3));
            $demand->setText($this->faker->text());
            $demand->setPhoto($photosTab[mt_rand(0, count($photosTab) - 1)]);
            $demand->setDateCreated($this->faker->dateTimeBetween('-'.$rand_days_created.' days','-'.$rand_days_modified.' days'));

            // Add fake random modified and no modified demands ( around 50% chance )
            // $rand_days_created = mt_rand(0, 365);
            if ($rand_days_created > 182) {
                $demand->setDateModified($this->faker->dateTimeBetween('-'.$rand_days_modified.' days'));
            }

            $demand->setDeleted($this->faker->boolean());
            $demand->setUser($users[mt_rand(0, count($users) - 1)]);  
            $manager->persist($demand);
        }

        /**
         * Generate fake Proposals
         */
    
        for ($i = 0; $i< 20; ++$i) {

            // Generated two random values, the value of the modified date must be less than the created date
            // so the random value for modified is between 0 and the value generated for the created date      
            $rand_days_created = mt_rand(0, 365);
            $rand_days_modified = mt_rand(0,$rand_days_created);

            $proposal = new Proposal();
            $proposal->setTitle($this->faker->sentence(3));
            $proposal->setText($this->faker->text());
            $proposal->setPhoto($this->faker->imageUrl(100, 100, 'photo', true));
            $proposal->setDateCreated($this->faker->dateTimeBetween('-'.$rand_days_created.' days','-'.$rand_days_modified.' days'));
            
            // Add fake random modified and no modified proposals ( around 50% chance )
            // $rand_days_created = mt_rand(0, 365);
            if ($rand_days_created > 182) {
                $proposal->setDateModified($this->faker->dateTimeBetween('-'.$rand_days_modified.' days'));
            }

            $proposal->setDeleted($this->faker->boolean());
            $proposal->setUser($users[mt_rand(0, count($users) - 1)]);  
            $manager->persist($proposal);
        }
        $manager->flush();
    }
}
