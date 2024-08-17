-- case Statement

SELECT first_name,
last_name,
age,
CASE
	WHEN age < 30 THEN 'YOUNG'
    WHEN age BETWEEN 31 AND 50 THEN 'OLD'
    WHEN age >= 50 THEN 'OLDER'
END AS AGE_BRACKET
FROM employee_demographics;


SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN (salary * 1.05) - salary
END AS BONUS
FROM employee_salary;

SELECT *
FROM employee_salary;