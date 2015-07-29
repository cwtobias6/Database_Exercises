SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE first_name IN('Irena','Vidya','Maya')
ORDER BY first_name ASC;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE first_name IN('Irena','Vidya','Maya')
ORDER BY first_name ASC, last_name ASC;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE first_name IN('Irena','Vidya','Maya')
ORDER BY last_name ASC,first_name ASC;

SELECT concat(last_name, ',',first_name) AS E_names
FROM employees
WHERE (last_name LIKE 'E%') AND (last_name LIKE '%E');
ORDER BY em_no ASC;

SELECT concat(last_name, ',',first_name) AS E_names
FROM employees
WHERE (last_name LIKE 'E%') AND (last_name LIKE '%E')
ORDER BY emp_no ASC;

SELECT first_name,last_name,birth_date AS hire_date_birth_date
FROM employees
WHERE (birth_date LIKE '%-12-25') AND (hire_date BETWEEN '1990-01-01' and '1999-12-31')
ORDER BY birth_date ASC, hire_date DESC;
