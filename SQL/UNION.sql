-- UNIONS

SELECT first_name, last_name
FROM employee_demographics
UNION -- DISTINCT 
SELECT first_name, last_name 
FROM employee_salary;

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name 
FROM employee_salary;


SELECT first_name, last_name, 'old man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'old lady' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'highly paid employee' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;
