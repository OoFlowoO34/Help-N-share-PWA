<?php

namespace App\Entity;

use App\Entity\User;
use Doctrine\ORM\Mapping as ORM;
use App\Repository\LikeRepository;

#[ORM\Entity(repositoryClass: LikeRepository::class)]
#[ORM\Table(name: '`like`')]
class Like
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\ManyToOne(inversedBy: 'likers')]
    #[ORM\JoinColumn(nullable: false)]
    private ?User $user_liker = null;

    #[ORM\ManyToOne(inversedBy: 'likeds')]
    #[ORM\JoinColumn(nullable: false)]
    private ?User $user_liked = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUserLiker(): ?User
    {
        return $this->user_liker;
    }

    public function setUserLiker(?User $user_liker): self
    {
        $this->user_liker = $user_liker;

        return $this;
    }

    public function getUserLiked(): ?User
    {
        return $this->user_liked;
    }

    public function setUserLiked(?User $user_liked): self
    {
        $this->user_liked = $user_liked;

        return $this;
    }

}
