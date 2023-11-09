SELECT first_name, last_name, hire_date
FROM Employee
WHERE EXTRACT(YEAR FROM hire_date) = 1986;