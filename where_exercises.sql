SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE first_name IN('Irena','Vidya','Maya');


SELECT concat(last_name, ',',first_name) AS last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT first_name,hire_date AS hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31';

SELECT first_name, birth_date AS hire_date
FROM employees
WHERE birth_date LIKE '%-12-25';