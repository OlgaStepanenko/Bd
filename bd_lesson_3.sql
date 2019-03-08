//задание 1

SELECT * FROM bd_lesson_1.cities WHERE cities_id = 1;

SELECT * FROM bd_lesson_1.cities WHERE cities_id = 1;


//задание 2

INSERT INTO bd_lesson_1.`regions` (country_id, region) VALUES ('1', 'Московская обл.');


ALTER TABLE `bd_lesson_1`.`cities`
 
CHANGE COLUMN `region_id` `region_id`
 INT(11) NOT NULL ;


INSERT INTO bd_lesson_1.`regions` (country_id, region) VALUES ('1', 'Московская обл.');

INSERT INTO bd_lesson_1.`cities` (id_country, city, region_id) VALUES ('7', 'Подольск', '8');
INSERT INTO bd_lesson_1.`cities` (id_country, city, region_id) VALUES ('8', 'Балашиха', '8');
INSERT INTO bd_lesson_1.`cities` (id_country, city, region_id) VALUES ('9', 'Химки', '8');

SELECT * FROM bd_lesson_1.`cities` WHERE region_id = 8;


//задание 3

CREATE SCHEMA `employees` ;

CREATE TABLE `employees`.`staff` (

  `employee_id` INT NOT NULL AUTO_INCREMENT,

  `department` VARCHAR(125) NOT NULL,

  `salary` INT NOT NULL,

  PRIMARY KEY (`employee_id`))

ENGINE = InnoDB
DEFAULT
 CHARACTER SET = utf8;

INSERT INTO employees.`staff` (department, salary) VALUES ('Управляющие сотрудники', '150000');
INSERT INTO employees.`staff` (department, salary) VALUES ('Управляющие сотрудники', '130000');
INSERT INTO employees.`staff` (department, salary) VALUES ('Управляющие сотрудники', '160000');
INSERT INTO employees.`staff` (department, salary) VALUES ('Отдел маркетинга и рекламы', '80000');
INSERT INTO employees.`staff` (department, salary) VALUES ('Отдел маркетинга и рекламы', '90000');
INSERT INTO employees.`staff` (department, salary) VALUES ('Отдел логистики', '90000');
INSERT INTO employees.`staff` (department, salary) VALUES ('Отдел логистики', '60000');
INSERT INTO employees.`staff` (department, salary) VALUES ('Отдел маркетинга и рекламы', '75000');
INSERT INTO employees.`staff` (department, salary) VALUES ('Отдел логистики', '95000');


SELECT * FROM employees.`staff` WHERE department = 'Управляющие сотрудники' AND salary = '150000';
SELECT * FROM employees.`staff` WHERE department = 'Отдел маркетинга и рекламы' AND salary = '80000';
SELECT * FROM employees.`staff` WHERE department = 'Отдел логистики' AND salary = '90000';


SELECT MAX(salary) FROM employees.`staff`;

DELETE FROM employees.`staff` WHERE salary = '160000';

SELECT COUNT (employee_id) FROM employees.`staff`;











