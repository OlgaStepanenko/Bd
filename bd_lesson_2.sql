//_countries;

SELECT * FROM bd_lesson_1.country;

//изменила имя таблицы;
ALTER TABLE `bd_lesson_1`.`country`
 
RENAME TO  `bd_lesson_1`.`countries` ;

//изменила имя таблицы; изменила название строки 'id_country' на 'country_id';
ALTER TABLE `bd_lesson_1`.`country`
 
CHANGE COLUMN `id_country` `country_id` INT(11) NOT NULL AUTO_INCREMENT ;


//увеличила длину строки 'country' до 150 символов;
ALTER TABLE `bd_lesson_1`.`country`
 
CHANGE COLUMN `country` `country` VARCHAR(150) NOT NULL ;


//_regions

//создаю таблицу
CREATE TABLE `bd_lesson_1`.`regions`(

  `region_id` INT NOT NULL AUTO_INCREMENT,

  `country_id` INT NOT NULL,

  `region` VARCHAR(150) NOT NULL,

  PRIMARY KEY (`region_id`),

  INDEX `fk_region_country_idx` (`country_id` ASC) VISIBLE,
  CONSTRAINT `fk_region_country`

    FOREIGN KEY (`country_id`)

    REFERENCES `bd_lesson_1`.`countries` (`country_id`)

    ON DELETE CASCADE

    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT
 CHARACTER SET = utf8;

//заполняю таблицу
INSERT INTO bd_lesson_1.`regions` (country_id, region) VALUES ('1', 'Амурская обл.');

INSERT INTO bd_lesson_1.`regions` (country_id, region) VALUES ('1', 'Воронежская обл.');

INSERT INTO bd_lesson_1.`regions` (country_id, region) VALUES ('1', 'Иркутская обл.');

INSERT INTO bd_lesson_1.`regions` (country_id, region) VALUES ('1', 'Нижегородская обл.');

INSERT INTO bd_lesson_1.`regions` (country_id, region) VALUES ('1', 'Ленинградская обл.');

INSERT INTO bd_lesson_1.`regions` (country_id, region) VALUES ('1', 'Тюменская обл.');
INSERT INTO bd_lesson_1.`regions` (country_id, region) VALUES ('1', 'Санкт-Петербург');


//cities

//заменила название строки `id_cities` на `cities_id`;
ALTER TABLE `bd_lesson_1`.`cities`
 
CHANGE COLUMN `id_cities` `cities_id` INT(11) NOT NULL AUTO_INCREMENT ;


//создала строку `important`;
ALTER TABLE `bd_lesson_1`.`cities`
 
CHANGE COLUMN `id_country` `important` TINYINT(1) NOT NULL ;

//создаю строку `region_id`;
ALTER TABLE `bd_lesson_1`.`cities`
 
ADD COLUMN `region_id` INT NOT NULL AFTER `city`;

ALTER TABLE bd_lesson_1.cities MODIFY COLUMN region_id INT AFTER city;

ALTER TABLE `bd_lesson_1`.`regions`
 
DROP FOREIGN KEY `fk_region_country`;

ALTER TABLE `bd_lesson_1`.`regions`
 
DROP INDEX `fk_region_country_idx` ;

;




ALTER TABLE `bd_lesson_1`.`world`
 
DROP FOREIGN KEY `fk_world_country`,

DROP FOREIGN KEY `fk_world_streets`;

ALTER TABLE `bd_lesson_1`.`world`
 
CHANGE COLUMN `id_country` `country_id` INT(11) NOT NULL ,

CHANGE COLUMN `id_streets` `streets_id` INT(11) NOT NULL ,

CHANGE COLUMN `id_region` `region_id` INT(11) NOT NULL ;

ALTER TABLE `bd_lesson_1`.`world` 

ADD CONSTRAINT `fk_world_country`

  FOREIGN KEY (`country_id`)

  REFERENCES `bd_lesson_1`.`countries` (`country_id`)

  ON DELETE CASCADE,
ADD CONSTRAINT `fk_world_streets`

  FOREIGN KEY (`streets_id`)
  REFERENCES `bd_lesson_1`.`streets` (`id_streets`)

  ON DELETE CASCADE;








