-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema course_platform
-- -----------------------------------------------------
-- database from JavaEE course

-- -----------------------------------------------------
-- Schema course_platform
--
-- database from JavaEE course
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `course_platform` DEFAULT CHARACTER SET utf8 ;
USE `course_platform` ;

-- -----------------------------------------------------
-- Table `course_platform`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `course_platform`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(30) NOT NULL,
  `email` VARCHAR(40) NOT NULL,
  `password` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `course_platform`.`course_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `course_platform`.`course_category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `description` VARCHAR(2000) COLLATE 'Default Collation' NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `description_UNIQUE` (`description` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `course_platform`.`course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `course_platform`.`course` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `description` VARCHAR(2000) NULL,
  `category_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  INDEX `fk_course_course_category1_idx` (`category_id` ASC) VISIBLE,
  CONSTRAINT `fk_course_course_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `course_platform`.`course_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `course_platform`.`user_has_course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `course_platform`.`user_has_course` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `course_id` INT NOT NULL,
  `singup_date` DATE NOT NULL,
  `expiration_date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_user_has_course_course1_idx` (`course_id` ASC) VISIBLE,
  INDEX `fk_user_has_course_user_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_has_course_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `course_platform`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_course_course1`
    FOREIGN KEY (`course_id`)
    REFERENCES `course_platform`.`course` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `course_platform`.`user_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `course_platform`.`user_details` (
  `id` INT NOT NULL,
  `telephone` VARCHAR(11) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL,
  `city` VARCHAR(30) COLLATE 'Default Collation' NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_user_details_user1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_details_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `course_platform`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
