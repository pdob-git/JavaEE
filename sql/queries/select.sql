SELECT * FROM employees;

SELECT * FROM departments;

SELECT first_name, last_name, hire_date FROM employees;

-- order by
SELECT * FROM employees ORDER BY last_name, first_name;
SELECT * FROM employees ORDER BY last_name ASC, first_name ASC;
SELECT * FROM employees order by last_name DESC, first_name DESC;

-- limit
SELECT * FROM employees ORDER BY birth_date DESC LIMIT 10;

-- where
SELECT * FROM employees WHERE gender = 'M';
SELECT * FROM employees WHERE gender = 'M' AND hire_date >= '1990-01-01';

SELECT * FROM 
	employees 
WHERE 
	gender = 'M' AND hire_date >= '1990-01-01'
ORDER BY
	hire_date
LIMIT
	10
;