
SELECT count(*)
FROM employees
WHERE first_name IN('Irena','Vidya','Maya')
GROUP BY gender;

SELECT concat(last_name, ',',first_name) AS E_names
FROM employees
WHERE (last_name LIKE 'E%') AND (last_name LIKE '%E')
ORDER BY emp_no ASC;

SELECT last_name,datediff(now(),hire_date) AS days_working_here
FROM employees
WHERE (birth_date LIKE '%-12-25') AND (hire_date BETWEEN '1990-01-01' and '1999-12-31')
ORDER BY birth_date ASC, hire_date ASC;


SELECT concat(last_name,' ', first_name) AS names,count(last_name) AS number_of_ppl_with_last_name
FROM employees
WHERE (last_name LIKE '%q%') AND (last_name NOT LIKE '%qu%')
GROUP BY names
ORDER BY number_of_ppl_with_last_name DESC;







