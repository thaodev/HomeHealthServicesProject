-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema homehealthtracker
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `homehealthtracker` ;

-- -----------------------------------------------------
-- Schema homehealthtracker
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `homehealthtracker` DEFAULT CHARACTER SET utf8 ;
USE `homehealthtracker` ;

-- -----------------------------------------------------
-- Table `Discipline`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Discipline` ;

CREATE TABLE IF NOT EXISTS `Discipline` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS officer@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'officer'@'localhost' IDENTIFIED BY 'officer';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'officer'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Discipline`
-- -----------------------------------------------------
START TRANSACTION;
USE `homehealthtracker`;
INSERT INTO `Discipline` (`id`, `name`) VALUES (1, 'PDN');

COMMIT;

