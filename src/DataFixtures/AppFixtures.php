<?php

namespace App\DataFixtures;

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

        //Photos fixtures from freepng.fr and Unsplash, websites to share photos under free licence.
        $photosProfileTab = ["fixture_photo_profile_1.jpg","fixture_photo_profile_6.jpg","fixture_photo_profile_7.jpg","fixture_photo_profile_8.jpg"
                        ,"fixture_photo_profile_9.jpg","fixture_photo_profile_10.jpg","fixture_photo_profile_11.jpg","fixture_photo_profile_12.jpg"
                    ,"fixture_photo_profile_14.jpg"];

                    // "fixture_photo_profile_2.jpg","fixture_photo_profile_3.jpg","fixture_photo_profile_4.jpg",
                    //"fixture_photo_profile_5.jpg","fixture_photo_profile_11.jpg","fixture_photo_profile_13.jpg",

           
        /**
         * Generate fake Users, put it in a tab so it can be reused to generate the other related entities.
         */
        $users = [];
        for ($i = 0; $i< 20; ++$i) {
            $randPhotosProfile = mt_rand(0,3);  

            $user = new User();
            $user->setEmail($this->faker->email());
            $user->setRoles([]);
            $user->setPassword($this->hasher->hashPassword(
                $user,
                'password'
            ));
            $user->setPseudo($this->faker->firstName());
            $user->setLocation($this->faker->departmentName());
            if( $randPhotosProfile == 3 ){
                $user->setPhoto("");
            }
            else{
                $user->setPhoto($photosProfileTab[mt_rand(0, count($photosProfileTab) - 1)]);
            }
            
            // $user->setPhoto($this->faker->imageUrl(100, 100, 'photo', true));
            $users[] = $user;
            $manager->persist($user);
        }



        //Photos fixtures from Unsplash, website to share photos under free licence.
        $photosTab = ["fixture_photo_1.jpg","fixture_photo_2.jpg","fixture_photo_3.jpg","fixture_photo_4.jpg","fixture_photo_5.jpg","fixture_photo_6.jpg"];

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

            // Add fake random modified and not modified demands ( around 50% chance )
            // $rand_days_created = mt_rand(0, 365);
            if ($rand_days_created > 182) {
                $demand->setDateModified($this->faker->dateTimeBetween('-'.$rand_days_modified.' days'));
            }

            $demand->setDeleted($this->faker->boolean());
            $demand->setUser($users[mt_rand(0, count($users) - 1)]);  
            $manager->persist($demand);
        }
       
        $manager->flush();
    }
}