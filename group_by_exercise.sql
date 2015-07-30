SELECT DISTINCT title
FROM titles
GROUP BY title;

SELECT concat(last_name, ',',first_name) AS E_names
FROM employees
WHERE (last_name LIKE 'E%') AND (last_name LIKE '%E')
GROUP BY last_name ASC;

SELECT concat(last_name, ',',first_name) AS E_names
FROM employees
WHERE (last_name LIKE 'E%') AND (last_name LIKE '%E')
GROUP BY last_name, first_name ASC;


SELECT concat(last_name, ',',first_name) AS last_name
FROM employees
WHERE (last_name LIKE '%q%') AND (last_name NOT LIKE '%qu%')
GROUP BY last_name;




