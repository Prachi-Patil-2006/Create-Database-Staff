create database staff;
use staff;

-- Creating a table named 'employees'
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);
-- drop table employees;
-- Inserting sample data into 'employees'
INSERT INTO employees (id, name, department, salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'IT', 60000),
(3, 'Carol', 'IT', 70000),
(4, 'David', 'HR', 55000),
(5, 'Eve', 'Finance', 75000),
(6, 'Frank', 'Finance', NULL); -- Frank's salary is unknown (NULL)

select * from employees;


-- Count all rows in the table (including rows with NULL values)
SELECT COUNT(*) AS total_employees FROM employees;

-- Count rows where salary is NOT NULL
SELECT COUNT(salary) AS employees_with_salary FROM employees;

-- Count distinct departments
SELECT COUNT(DISTINCT department) AS number_of_departments FROM employees;



-- Calculate the total sum of all salaries (NULLs are ignored automatically)
SELECT SUM(salary) AS total_salary FROM employees;

-- Calculate sum of salaries for the IT department only
SELECT SUM(salary) AS it_total_salary
FROM employees
WHERE department = 'IT';


-- Calculate average salary for all employees (NULLs are ignored)
SELECT AVG(salary) AS average_salary FROM employees;

-- Calculate average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;


-- Get maximum salary in the table
SELECT MAX(salary) AS highest_salary FROM employees;

-- Get maximum salary per department
SELECT department, MAX(salary) AS max_salary
FROM employees
GROUP BY department;


-- Get minimum salary in the table
SELECT MIN(salary) AS lowest_salary FROM employees;

-- Get minimum salary per department
SELECT department, MIN(salary) AS min_salary
FROM employees
GROUP BY department;
