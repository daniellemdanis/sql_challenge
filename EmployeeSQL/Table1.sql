-- CREATE TABLE Employee (
--     emp_no serial PRIMARY KEY,
--     emp_title_id VARCHAR(10),
--     birth_date DATE,
--     first_name VARCHAR(255),
--     last_name VARCHAR(255),
--     sex CHAR(1),
--     hire_date DATE
-- );
-- CREATE TABLE Salaries (
-- 		emp_no serial PRIMARY KEY,
-- 		salary INTEGER);

SELECT E.emp_no, E.last_name, E.first_name, E.sex, S.salary
FROM Employee E
INNER JOIN Salaries S ON E.emp_no = S.emp_no;

