-- LIMIT

SELECT * 
FROM employee_demographics
LIMIT 2, 1
;

SELECT * FROM employee_demographics;

-- ALIASING

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;