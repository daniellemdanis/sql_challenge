-- CREATE TABLE Departments (
--     dept_no CHAR(4) PRIMARY KEY,
--     dept_name VARCHAR(255));

-- CREATE TABLE EmployeeDepartments (
--     emp_no INT,
--     dept_no CHAR(4));
	
-- CREATE TABLE DepartmentManager (
--     dept_no CHAR(4),
--     emp_no INT);
	
-- CREATE TABLE Titles (
--     title_id CHAR(10) PRIMARY KEY,
--     title VARCHAR(255)
-- );

--List the manager of each department along with their department number, department name, employee number, last name, and first name.

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

