USE employees;
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M'
ORDER BY last_name, first_name;
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
ORDER BY emp_no;
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M'
ORDER BY last_name DESC, first_name DESC;
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
ORDER BY emp_no DESC;