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

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE first_name ='Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE gender = 'M' AND (first_name ='Irena' OR first_name = 'Vidya' OR first_name = 'Maya');

SELECT concat(last_name, ',',first_name) AS E_names
FROM employees
WHERE (last_name LIKE 'E%') OR (last_name LIKE '%E');

SELECT concat(last_name, ',',first_name) AS E_names
FROM employees
WHERE (last_name LIKE 'E%') AND (last_name LIKE '%E');

SELECT first_name, birth_date AS hire_date_birth_date
FROM employees
WHERE (birth_date LIKE '%-12-25') AND (hire_date BETWEEN '1990-01-01' and '1999-12-31');

SELECT concat(last_name, ',',first_name) AS last_name
FROM employees
WHERE (last_name LIKE '%q%') AND (last_name NOT LIKE '%qu%');