-- Stored Procedures

SELECT *
FROM employee_salary
WHERE salary >= 50000;



CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries3();

DELIMITER $$
CREATE PROCEDURE large_salaries()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;



DELIMITER $$
CREATE PROCEDURE LARGE(emp_ID INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = emp_ID
	;
END $$
DELIMITER ;

CALL LARGE(1);