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
-- Table `discipline`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `discipline` ;

CREATE TABLE IF NOT EXISTS `discipline` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `line_of_business`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `line_of_business` ;

CREATE TABLE IF NOT EXISTS `line_of_business` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `payroll`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `payroll` ;

CREATE TABLE IF NOT EXISTS `payroll` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `start_period` DATE NOT NULL,
  `end_period` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_type` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `line_of_business`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `line_of_business` ;

CREATE TABLE IF NOT EXISTS `line_of_business` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `employee` ;

CREATE TABLE IF NOT EXISTS `employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `user_id` INT NOT NULL,
  `line_of_business_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_employee_user1_idx` (`user_id` ASC),
  INDEX `fk_employee_line_of_business1_idx` (`line_of_business_id` ASC),
  CONSTRAINT `fk_employee_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_employee_line_of_business1`
    FOREIGN KEY (`line_of_business_id`)
    REFERENCES `line_of_business` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `client`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `client` ;

CREATE TABLE IF NOT EXISTS `client` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `date_of_birth` DATE NULL,
  `street` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `medicaid_eligible` TINYINT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `schedule`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `schedule` ;

CREATE TABLE IF NOT EXISTS `schedule` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NULL,
  `bill_amount` DECIMAL(5,2) NULL,
  `payroll_amount` DECIMAL(5,2) NULL,
  `payroll_id` INT NOT NULL,
  `schedule_status` VARCHAR(45) NULL,
  `bill_status` VARCHAR(45) NULL,
  `client_id` INT NOT NULL,
  `payroll_status` VARCHAR(45) NULL,
  `line_of_business_id` INT NOT NULL,
  `discipline_id` INT NOT NULL,
  `employee_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_schedule_payroll_idx` (`payroll_id` ASC),
  INDEX `fk_schedule_client1_idx` (`client_id` ASC),
  INDEX `fk_schedule_line_of_business1_idx` (`line_of_business_id` ASC),
  INDEX `fk_schedule_discipline1_idx` (`discipline_id` ASC),
  INDEX `fk_schedule_employee1_idx` (`employee_id` ASC),
  CONSTRAINT `fk_schedule_payroll`
    FOREIGN KEY (`payroll_id`)
    REFERENCES `payroll` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_schedule_client1`
    FOREIGN KEY (`client_id`)
    REFERENCES `client` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_schedule_line_of_business1`
    FOREIGN KEY (`line_of_business_id`)
    REFERENCES `line_of_business` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_schedule_discipline1`
    FOREIGN KEY (`discipline_id`)
    REFERENCES `discipline` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_schedule_employee1`
    FOREIGN KEY (`employee_id`)
    REFERENCES `employee` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
-- Data for table `discipline`
-- -----------------------------------------------------
START TRANSACTION;
USE `homehealthtracker`;
INSERT INTO `discipline` (`id`, `name`) VALUES (1, 'SN');
INSERT INTO `discipline` (`id`, `name`) VALUES (2, 'HHA');
INSERT INTO `discipline` (`id`, `name`) VALUES (4, 'PT');
INSERT INTO `discipline` (`id`, `name`) VALUES (5, 'OT');
INSERT INTO `discipline` (`id`, `name`) VALUES (6, 'ST');
INSERT INTO `discipline` (`id`, `name`) VALUES (3, 'MSW');

COMMIT;


-- -----------------------------------------------------
-- Data for table `line_of_business`
-- -----------------------------------------------------
START TRANSACTION;
USE `homehealthtracker`;
INSERT INTO `line_of_business` (`id`, `name`) VALUES (1, 'unknown');

COMMIT;


-- -----------------------------------------------------
-- Data for table `payroll`
-- -----------------------------------------------------
START TRANSACTION;
USE `homehealthtracker`;
INSERT INTO `payroll` (`id`, `start_period`, `end_period`) VALUES (1, '2022-01-01', '2022-01-15');

COMMIT;


-- -----------------------------------------------------
-- Data for table `user`
-- -----------------------------------------------------
START TRANSACTION;
USE `homehealthtracker`;
INSERT INTO `user` (`id`, `user_type`) VALUES (1, 'regular employee');
INSERT INTO `user` (`id`, `user_type`) VALUES (2, 'schedule manager');
INSERT INTO `user` (`id`, `user_type`) VALUES (3, 'biller');
INSERT INTO `user` (`id`, `user_type`) VALUES (4, 'admin');

COMMIT;


-- -----------------------------------------------------
-- Data for table `line_of_business`
-- -----------------------------------------------------
START TRANSACTION;
USE `homehealthtracker`;
INSERT INTO `line_of_business` (`id`, `name`) VALUES (2, 'IHSS');
INSERT INTO `line_of_business` (`id`, `name`) VALUES (3, 'PDN');
INSERT INTO `line_of_business` (`id`, `name`) VALUES (4, 'Home Heath');

COMMIT;


-- -----------------------------------------------------
-- Data for table `employee`
-- -----------------------------------------------------
START TRANSACTION;
USE `homehealthtracker`;
INSERT INTO `employee` (`id`, `first_name`, `last_name`, `address`, `user_id`, `line_of_business_id`) VALUES (1, 'Mary', 'Chappline', '11445 Fullerton Drive', 1, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `client`
-- -----------------------------------------------------
START TRANSACTION;
USE `homehealthtracker`;
INSERT INTO `client` (`id`, `name`, `date_of_birth`, `street`, `city`, `state`, `medicaid_eligible`) VALUES (1, 'Peter Markel', '1996-12-11', '1452 Holly Street', 'Greenland', 'PA', 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `schedule`
-- -----------------------------------------------------
START TRANSACTION;
USE `homehealthtracker`;
INSERT INTO `schedule` (`id`, `date`, `bill_amount`, `payroll_amount`, `payroll_id`, `schedule_status`, `bill_status`, `client_id`, `payroll_status`, `line_of_business_id`, `discipline_id`, `employee_id`) VALUES (1, '2022-01-01', 200, 150, 1, 'planned', 'not yet', 1, 'not yet', 2, 1, 1);

COMMIT;

