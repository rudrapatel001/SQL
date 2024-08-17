SELECT * 
FROM employee_demographics;


SELECT DISTINCT gender
FROM employee_demographics;

SELECT gender , AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;
 
 -- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY first_name ASC; -- by default ascending order so no need to write ASC
 
SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

  SELECT *
 FROM employee_demographics
 ORDER BY gender,age DESC; 
 
SELECT * 
FROM employee_demographics
ORDER BY 5, 4 -- use index of column instead of names but it is not recommended :)
; 