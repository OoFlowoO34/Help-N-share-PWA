<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20221013161743 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE demand_relation (id INT AUTO_INCREMENT NOT NULL, demand_id INT DEFAULT NULL, user_id INT NOT NULL, INDEX IDX_9D2957D75D022E59 (demand_id), INDEX IDX_9D2957D7A76ED395 (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE demand_relation ADD CONSTRAINT FK_9D2957D75D022E59 FOREIGN KEY (demand_id) REFERENCES demand (id)');
        $this->addSql('ALTER TABLE demand_relation ADD CONSTRAINT FK_9D2957D7A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE demand_relation DROP FOREIGN KEY FK_9D2957D75D022E59');
        $this->addSql('ALTER TABLE demand_relation DROP FOREIGN KEY FK_9D2957D7A76ED395');
        $this->addSql('DROP TABLE demand_relation');
    }
}
