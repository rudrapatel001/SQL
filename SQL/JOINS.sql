SELECT *
FROM employee_demographics
;

SELECT * 
FROM employee_salary
;
-- you cannot join 2 or more table if they doesn't have a single column in common
-- inner join

SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    ;

SELECT dem.employee_id, age, occupation -- always mention table_name.column_name if both tables have same column names
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    ;
    
    
-- outer joins(left and right joins)
    
SELECT * 
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    ;

SELECT * 
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    ;

-- self join

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS fn_santa,
emp1.last_name AS ln_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS fn_emp,
emp2.last_name AS ln_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
    ;
    
-- joining multiple tables together

SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id;
    ;
    
SELECT *
FROM parks_departments;

