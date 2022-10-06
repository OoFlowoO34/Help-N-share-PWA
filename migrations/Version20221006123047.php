<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20221006123047 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE proposal (id INT AUTO_INCREMENT NOT NULL, user_id INT NOT NULL, title VARCHAR(50) NOT NULL, text LONGTEXT NOT NULL, photo VARCHAR(255) DEFAULT NULL, date_created DATETIME NOT NULL, date_modified DATETIME NOT NULL, deleted TINYINT(1) NOT NULL, INDEX IDX_BFE59472A76ED395 (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE proposal ADD CONSTRAINT FK_BFE59472A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE proposal DROP FOREIGN KEY FK_BFE59472A76ED395');
        $this->addSql('DROP TABLE proposal');
    }
}
