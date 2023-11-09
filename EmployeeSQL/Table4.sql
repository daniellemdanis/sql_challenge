--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT
    E.emp_no,
    E.last_name,
    E.first_name,
    ED.dept_no,
    D.dept_name
FROM
    Employee E
INNER JOIN
    EmployeeDepartments ED ON E.emp_no = ED.emp_no
INNER JOIN
    Departments D ON ED.dept_no = D.dept_no;
