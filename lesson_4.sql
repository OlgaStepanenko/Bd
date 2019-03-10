//Задание 1

CREATE VIEW cities_Moscow_obl_view AS
SELECT region_id, country_id, region
FROM  bd_lesson_1.regions
WHERE country_id IS NOT NULL
WITH CHECK OPTION;

SELECT * FROM cities_Moscow_obl_view;


CREATE VIEW max_salary_view AS
SELECT department, salary
FROM emploees.staff
WHERE salary = MAX(salary);

SELECT * FROM max_salary_view;


CREATE VIEW salary_view AS
SELECT department, salary
FROM emploees.staff
WHERE department = 'Управляющие сотрудники' AND salary = 150000;

SELECT * FROM salary_view;



//Задание 2

DELIMITER $$

CREATE FUNCTION l_f_name(VARCHAR)
RETURNS NOT DETERMINISTIC
BEGIN
SELECT last_name = 'Иванов' FROM emploees.staff;
RETURN last_name, first_name;
END $$

DELIMITER;

SELECT l_f_name FROM emploees.staff;


//Задание 3

CREATE TRIGGER new_employee
AFTER INSERT ON emploees.staff
REFERENCING new AS new_emp
FOR EACH ROW MODE DB2SQL
UPDATE staff SET count = count+1 WHERE empl = new_emp.staff;
SELECT salary = 100 FROM emploees.staff;

INSERT INTO emploees.staff (last_name, first_name) values('Иванов','Иван');


SELECT * FROM new_employee;


















