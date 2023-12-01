CREATE TABLE Departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(255));

CREATE TABLE EmployeeDepartments (
    emp_no INT,
    dept_no CHAR(4));
	
CREATE TABLE DepartmentManager (
    dept_no CHAR(4),
    emp_no INT);
	
CREATE TABLE Titles (
    title_id CHAR(10) PRIMARY KEY,
    title VARCHAR(255)
);

SELECT
    DM.dept_no,
    D.dept_name,
    DM.emp_no,
    E.last_name,
    E.first_name
FROM
    DepartmentManager DM
INNER JOIN
    Departments D ON DM.dept_no = D.dept_no
INNER JOIN
    Employee E ON DM.emp_no = E.emp_no;
	
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

SELECT first_name, last_name, sex
FROM Employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT
    E.emp_no,
    E.last_name,
    E.first_name
FROM
    Employee E
INNER JOIN
    EmployeeDepartments ED ON E.emp_no = ED.emp_no
INNER JOIN
    Departments D ON ED.dept_no = D.dept_no
WHERE
    D.dept_name = 'Sales';
	
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
	
SELECT last_name, COUNT(*) as name_count
FROM Employee
GROUP BY last_name
ORDER BY name_count DESC;