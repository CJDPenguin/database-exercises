USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Employee', hire_date AS 'Date Hired' FROM employees
WHERE hire_date IN (
    SELECT hire_date FROM employees WHERE emp_no = 101010
    )
ORDER BY last_name;

SELECT title as 'Position', COUNT(emp_no) as 'Total at Position'
FROM titles
WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE first_name = 'Aamod'
    )
GROUP BY title;

SELECT first_name, last_name FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager WHERE to_date = '9999-01-01'
    ) AND gender = 'F';

SELECT dept_name FROM departments
WHERE dept_no IN (
    SELECT dept_no FROM dept_manager WHERE emp_no IN (
        SELECT emp_no FROM employees WHERE gender = 'F'
        ) AND to_date = '9999-01-01'
    );

SELECT first_name, last_name FROM employees
WHERE emp_no IN(
    SELECT emp_no FROM salaries WHERE salary IN (SELECT max(salary) FROM salaries)
    );