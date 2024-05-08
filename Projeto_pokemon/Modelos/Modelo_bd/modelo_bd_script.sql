CREATE SCHEMA pokemon_db;
USE pokemon_db;

select * from tb_pokemon_stage;

CREATE TABLE IF NOT EXISTS `tb_pokemon` (
  `Name` VARCHAR(35) NOT NULL,
  `Hp` INT NOT NULL,
  `Attack` INT NOT NULL,
  `Defense` INT NOT NULL,
  `Speed` INT NOT NULL,
  PRIMARY KEY (`Name`))
ENGINE = InnoDB;

ALTER TABLE `pokemon_db`.`tb_pokemon_stage` 
CHANGE COLUMN `Type 1` `Type_1` TEXT NULL DEFAULT NULL ;

CREATE TABLE IF NOT EXISTS `tb_pokemon_type` (
  `name_pokemon_type` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`name_pokemon_type`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `tb_pokemon_has_type` (
  `Name` VARCHAR(35) NOT NULL,
  `name_pokemon_type` VARCHAR(9) NOT NULL,
  `tb_pokemon_has_typecol` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`Name`, `name_pokemon_type`, `tb_pokemon_has_typecol`),
  INDEX `fk_pokemon_type_idx` (`name_pokemon_type` ASC) VISIBLE,
  CONSTRAINT `fk_pokemon`
    FOREIGN KEY (`Name`)
    REFERENCES `tb_pokemon` (`Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pokemon_type`
    FOREIGN KEY (`name_pokemon_type`)
    REFERENCES `tb_pokemon_type` (`name_pokemon_type`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

select * from tb_pokemon_type;

INSERT INTO tb_pokemon (`Name`, `Hp`, `Attack`, `Defense`, `Speed`)
SELECT `Name`, `HP`, `Attack`, `Defense`, `Speed`
FROM tb_pokemon_stage;

INSERT INTO tb_pokemon_type (`name_pokemon_type`)
SELECT DISTINCT `Type_1`
FROM tb_pokemon_stage;

select * from tb_pokemon;

select * from tb_pokemon_type;







