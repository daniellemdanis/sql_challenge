-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT
    E.emp_no,
    E.last_name,
    E.first_name,
    D.dept_name
FROM
    Employee E
INNER JOIN
    EmployeeDepartments ED ON E.emp_no = ED.emp_no
INNER JOIN
    Departments D ON ED.dept_no = D.dept_no
WHERE
    D.dept_name IN ('Sales', 'Development');
