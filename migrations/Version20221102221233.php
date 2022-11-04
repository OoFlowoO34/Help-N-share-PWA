<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20221102221233 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE message ADD demand_relation_id INT NOT NULL');
        $this->addSql('ALTER TABLE message ADD CONSTRAINT FK_B6BD307F59CFB5E7 FOREIGN KEY (demand_relation_id) REFERENCES demand_relation (id)');
        $this->addSql('CREATE INDEX IDX_B6BD307F59CFB5E7 ON message (demand_relation_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE message DROP FOREIGN KEY FK_B6BD307F59CFB5E7');
        $this->addSql('DROP INDEX IDX_B6BD307F59CFB5E7 ON message');
        $this->addSql('ALTER TABLE message DROP demand_relation_id');
    }
}
