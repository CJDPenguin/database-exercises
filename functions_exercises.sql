USE employees;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
ORDER BY emp_no;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12
ORDER BY emp_no;

SELECT CONCAT(first_name, ' ', last_name), DATEDIFF(NOW(), hire_date)
FROM employees
WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12 AND YEAR(hire_date) >= 1990
ORDER BY hire_date DESC;