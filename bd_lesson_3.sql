//������� 1

SELECT * FROM bd_lesson_1.cities WHERE cities_id = 1;

SELECT * FROM bd_lesson_1.cities WHERE cities_id = 1;


//������� 2

INSERT INTO bd_lesson_1.`regions` (country_id, region) VALUES ('1', '���������� ���.');


ALTER TABLE `bd_lesson_1`.`cities`
 
CHANGE COLUMN `region_id` `region_id`
 INT(11) NOT NULL ;


INSERT INTO bd_lesson_1.`regions` (country_id, region) VALUES ('1', '���������� ���.');

INSERT INTO bd_lesson_1.`cities` (id_country, city, region_id) VALUES ('7', '��������', '8');
INSERT INTO bd_lesson_1.`cities` (id_country, city, region_id) VALUES ('8', '��������', '8');
INSERT INTO bd_lesson_1.`cities` (id_country, city, region_id) VALUES ('9', '�����', '8');

SELECT * FROM bd_lesson_1.`cities` WHERE region_id = 8;


//������� 3

CREATE SCHEMA `employees` ;

CREATE TABLE `employees`.`staff` (

  `employee_id` INT NOT NULL AUTO_INCREMENT,

  `department` VARCHAR(125) NOT NULL,

  `salary` INT NOT NULL,

  PRIMARY KEY (`employee_id`))

ENGINE = InnoDB
DEFAULT
 CHARACTER SET = utf8;

INSERT INTO employees.`staff` (department, salary) VALUES ('����������� ����������', '150000');
INSERT INTO employees.`staff` (department, salary) VALUES ('����������� ����������', '130000');
INSERT INTO employees.`staff` (department, salary) VALUES ('����������� ����������', '160000');
INSERT INTO employees.`staff` (department, salary) VALUES ('����� ���������� � �������', '80000');
INSERT INTO employees.`staff` (department, salary) VALUES ('����� ���������� � �������', '90000');
INSERT INTO employees.`staff` (department, salary) VALUES ('����� ���������', '90000');
INSERT INTO employees.`staff` (department, salary) VALUES ('����� ���������', '60000');
INSERT INTO employees.`staff` (department, salary) VALUES ('����� ���������� � �������', '75000');
INSERT INTO employees.`staff` (department, salary) VALUES ('����� ���������', '95000');


SELECT * FROM employees.`staff` WHERE department = '����������� ����������' AND salary = '150000';
SELECT * FROM employees.`staff` WHERE department = '����� ���������� � �������' AND salary = '80000';
SELECT * FROM employees.`staff` WHERE department = '����� ���������' AND salary = '90000';


SELECT MAX(salary) FROM employees.`staff`;

DELETE FROM employees.`staff` WHERE salary = '160000';

SELECT COUNT (employee_id) FROM employees.`staff`;











