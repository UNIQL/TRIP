SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Car`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Car` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Car` (
  `ID` BIGINT NOT NULL AUTO_INCREMENT ,
  `CARTYPE` VARCHAR(30) NOT NULL ,
  `CARCOLOUR` VARCHAR(20) NOT NULL ,
  `CARSEATS` INT(11)  NOT NULL ,
  `CARPIC` VARCHAR(100) NULL ,
  PRIMARY KEY (`ID`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Person`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Person` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Person` (
  `ID` BIGINT NOT NULL AUTO_INCREMENT ,
  `USERNAME` VARCHAR(45) NOT NULL ,
  `PWD` VARCHAR(30) NOT NULL ,
  `NAME` VARCHAR(30) NOT NULL ,
  `MAIL` VARCHAR(50) NOT NULL ,
  `DESCRIPTON` VARCHAR(500) NULL ,
  `PROFILEPIC` VARCHAR(100) NULL ,
  `Car_ID` BIGINT NULL ,
  PRIMARY KEY (`ID`) ,
  INDEX `fk_Person_Car` (`Car_ID` ASC) ,
  CONSTRAINT `fk_Person_Car`
    FOREIGN KEY (`Car_ID` )
    REFERENCES `mydb`.`Car` (`ID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Trip`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Trip` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Trip` (
  `ID` BIGINT NOT NULL AUTO_INCREMENT ,
  `OFFSETPLACE` VARCHAR(45) NOT NULL ,
  `ARRIVEPLACE` VARCHAR(45) NOT NULL ,
  `OFFSETDATE` DATE NOT NULL ,
  `OFFSETTIME` TIME NOT NULL ,
  `TRIPSEATS` INT(11)  NOT NULL ,
  `PRICE` INT(11)  NOT NULL ,
  `COMMENT` VARCHAR(200) NULL ,
  PRIMARY KEY (`ID`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`HAS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`HAS` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`HAS` (
  `Person_ID` BIGINT NULL AUTO_INCREMENT ,
  `Trip_ID` BIGINT NOT NULL ,
  PRIMARY KEY (`Person_ID`, `Trip_ID`) ,
  INDEX `fk_Person_has_Trip_Trip1` (`Trip_ID` ASC) ,
  INDEX `fk_Person_has_Trip_Person1` (`Person_ID` ASC) ,
  CONSTRAINT `fk_Person_has_Trip_Person1`
    FOREIGN KEY (`Person_ID` )
    REFERENCES `mydb`.`Person` (`ID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Person_has_Trip_Trip1`
    FOREIGN KEY (`Trip_ID` )
    REFERENCES `mydb`.`Trip` (`ID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
