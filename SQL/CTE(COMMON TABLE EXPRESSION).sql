-- CTEs(common table expression)



WITH CTE_EXAMPLE AS
(
SELECT gender,
AVG(salary) avg_sal, 
MAX(salary) max_sal,
MIN(salary) min_sal, 
COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT AVG(avg_sal)
FROM CTE_EXAMPLE
;

WITH CTE_EXAMPLE AS
(
SELECT gender,
AVG(salary) avg_sal, 
MAX(salary) max_sal,
MIN(salary) min_sal, 
COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT AVG(avg_sal)
FROM CTE_EXAMPLE
;

SELECT AVG(avg_sal)
FROM(
SELECT gender,
AVG(salary) avg_sal, 
MAX(salary) max_sal,
MIN(salary) min_sal, 
COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) ex_subquery
;


-- remember CTE is better the subquery
-- its common table which doesn't get stored in or create another table

WITH CTE_EXAMPLE(GENDER,AVG_SAL,MAX_SAL,MIN_SAL,COUNT_SAL) AS -- can name column here it will overwrite the default one.
(
SELECT gender,
AVG(salary) avg_sal, 
MAX(salary) max_sal, 
MIN(salary) min_sal, 
COUNT(salary) count_sal -- default method to change column name
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_EXAMPLE
;

-- multiple CTE and joining them

WITH CTE_Example AS
(
SELECT employee_id,gender,birth_date
FROM employee_demographics dem
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_example.employee_id = CTE_Example2.employee_id
;

