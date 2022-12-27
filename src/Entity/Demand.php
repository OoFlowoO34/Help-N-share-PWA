<?php

namespace App\Entity;

use App\Repository\DemandRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Entity(repositoryClass: DemandRepository::class)]
class Demand
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;


    #[ORM\Column(type: Types::TEXT)]
    #[Assert\NotBlank]
    #[Assert\NotNull]
    #[Assert\Length(
        min: 10,
        max: 50,
        minMessage: 'Votre titre doit faire minimum {{ limit }} caractères',
        maxMessage: 'Votre titre doit faire maximum {{ limit }} caractères',
    )]
    private ?string $title = null;

    #[ORM\Column(type: Types::TEXT)]
    #[Assert\NotBlank]
    #[Assert\NotNull]
    #[Assert\Length(
        min: 10,
        max: 200,
        minMessage: 'Votre message doit faire minimum {{ limit }} caractères',
        maxMessage: 'Votre message doit faire maximum {{ limit }} caractères',
    )]
    private ?string $text = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $photo = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $date_created = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $date_modified = null;
    
    #[ORM\Column]
    private ?bool $deleted = null;

    #[ORM\ManyToOne(inversedBy: 'demands')]
    #[ORM\JoinColumn(nullable: false)]
    private ?User $user = null;

    #[ORM\OneToMany(mappedBy: 'demand', targetEntity: DemandRelation::class)]
    private Collection $demandRelations;

    public function __construct()
    {
        $this->demandRelations = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getText(): ?string
    {
        return $this->text;
    }

    public function setText(string $text): self
    {
        $this->text = $text;

        return $this;
    }

    public function getPhoto(): ?string
    {
        return $this->photo;
    }

    public function setPhoto(?string $photo): self
    {
        $this->photo = $photo;

        return $this;
    }

    public function getDateCreated(): ?\DateTimeInterface
    {
        return $this->date_created;
    }

    public function setDateCreated(\DateTimeInterface $date_created): self
    {
        $this->date_created = $date_created;

        return $this;
    }

    public function getDateModified(): ?\DateTimeInterface
    {
        return $this->date_modified;
    }

    public function setDateModified(\DateTimeInterface $date_modified): self
    {
        $this->date_modified = $date_modified;

        return $this;
    }

    public function isDeleted(): ?bool
    {
        return $this->deleted;
    }

    public function setDeleted(bool $deleted): self
    {
        $this->deleted = $deleted;

        return $this;
    }

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(?User $user): self
    {
        $this->user = $user;

        return $this;
    }

    public function __toString(){
    return $this->id;
    }
    /**
     * @return Collection<int, DemandRelation>
     */
    public function getDemandRelations(): Collection
    {
        return $this->demandRelations;
    }

    public function addDemandRelation(DemandRelation $demandRelation): self
    {
        if (!$this->demandRelations->contains($demandRelation)) {
            $this->demandRelations->add($demandRelation);
            $demandRelation->setDemand($this);
        }

        return $this;
    }

    public function removeDemandRelation(DemandRelation $demandRelation): self
    {
        if ($this->demandRelations->removeElement($demandRelation)) {
            // set the owning side to null (unless already changed)
            if ($demandRelation->getDemand() === $this) {
                $demandRelation->setDemand(null);
            }
        }

        return $this;
    }

    // If the connected user has already responded to the demand or if he is the one who got a response to his demand
    public function isRelated(User $user): bool {
        
        // Get all relations of this demand
        $relations = $this->getDemandRelations();

        // If there is at least 1 relation on this demand
        if($relations != null ){
            foreach($relations as $relation){

                // If the connected user has already responded to the demand or if he is the one who got a response to his demand
                if($relation->getUser() == $user or $relation->getDemand()->getUser() == $user){
                    return true;
                }
            }
        }
        return false;
    }
}
