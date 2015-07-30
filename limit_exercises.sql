SELECT last_name
FROM employees 
GROUP BY last_name DESC
LIMIT 10;

SELECT first_name,last_name,birth_date AS hire_date_birth_date
FROM employees
WHERE (birth_date LIKE '%-12-25') AND (hire_date BETWEEN '1990-01-01' and '1999-12-31')
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;


SELECT first_name,last_name,birth_date AS hire_date_birth_date
FROM employees
WHERE (birth_date LIKE '%-12-25') AND (hire_date BETWEEN '1990-01-01' and '1999-12-31')
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;