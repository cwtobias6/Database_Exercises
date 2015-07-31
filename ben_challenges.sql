
--exercise on relationships and joins
SELECT CONCAT(e.first_name, ' ', e.last_name) AS manager, d.dept_name AS reigns_over_this_domain
FROM employees as e
JOIN dept_manager as dman
ON dman.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dman.dept_no;

-- The name and title of all employees whose title starts with "Senior" 167,963 rows
SELECT CONCAT(e.first_name, ' ', e.last_name) AS name, t.title AS their_title
FROM employees AS e
JOIN titles AS t
ON t.emp_no = e.emp_no
WHERE t.title LIKE 'senior%' AND t.to_date >=now();

--The departmentment and manager name where the manager is female
SELECT d.dept_name AS department_name, CONCAT(e.first_name, ' ', e.last_name) AS manager
FROM employees AS e
JOIN dept_manager AS dman
ON dman.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dman.dept_no
WHERE e.gender = 'F' AND dman.to_date >=now();


--Current salaries for all current managers
SELECT d.dept_name AS Department, CONCAT(e.first_name, ' ', e.last_name) AS name, sal.salary AS $$
FROM departments AS d
JOIN dept_emp AS demp
ON demp.dept_no = d.dept_no
JOIN employees AS e
ON e.emp_no = demp.emp_no
JOIN salaries AS sal
ON sal.emp_no = e.emp_no
JOIN dept_manager AS dman
ON dman.emp_no = sal.emp_no
WHERE dman.to_date >=now()
GROUP BY d.dept_name;



-- Current average salary of each title
SELECT DISTINCT t.title AS TITLE, avg(sal.salary) AS $$$$$
FROM titles AS t
JOIN salaries AS sal 
ON sal.emp_no = t.emp_no
WHERE sal.to_date >=now()
GROUP BY t.title;


-- Select every employee's fist & last name, department name, and the first and last name of their manager. Sort by department name, employee last name, employee first name. (Table and column aliases are ESSENTIAL for this one)


--employee, dept name, dept manager
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name AS department_name, CONCAT(emp.first_name, ' ', emp.last_name) AS manager
FROM employees as e
JOIN dept_emp as demp
ON demp.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = demp.dept_no
JOIN dept_manager as dman
ON dman.dept_no = d.dept_no
JOIN employees as emp
ON emp.emp_no = dman.emp_no
WHERE dman.to_date >=now() AND demp.to_date >=now();



