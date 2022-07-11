USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments as d
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e on e.emp_no = dm.emp_no
WHERE to_date = '9999-01-01' ORDER BY d.dept_no;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments as d
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e on e.emp_no = dm.emp_no
WHERE to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT title, COUNT(title)
FROM titles as t
JOIN employees e on t.emp_no = e.emp_no
JOIN dept_emp de on e.emp_no = de.emp_no
WHERE de.dept_no = 'd009' AND de.to_date = '9999-01-01' AND t.to_date = '9999-01-01'
GROUP BY title;

SELECT d.dept_name AS 'Department', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM salaries as s
JOIN employees e on e.emp_no = s.emp_no
JOIN dept_manager dm on e.emp_no = dm.emp_no
JOIN departments d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.dept_name AS 'Department', CONCAT(managers.first_name, ' ', managers.last_name) as 'Manager'
FROM employees as e
JOIN dept_emp de on e.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees as managers ON managers.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';