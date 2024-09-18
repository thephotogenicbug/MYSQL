-- function -- performs a specific task
-- aggregate functions
-- select everything from employee table and display the total no of employees
SELECT COUNT(*) total FROM employee;

-- select everything from employee table and display the no of managers
SELECT COUNT(*) no_of_managers FROM employee 
WHERE job_desc = "MANAGER";

-- select salary from employee table and display the average salary where job_desc is MANAGER
SELECT AVG(salary) FROM employee 
WHERE job_desc = "MANAGER";

-- select salary from employee table and display the TOTAL salaries of all employees
SELECT SUM(salary) FROM employee
WHERE job_desc = "ANALYST";

-- select salary from employee table and display the maximum salary
SELECT MAX(salary) FROM employee;

-- select salary from employee table and display the minimun salary
SELECT MIN(salary) FROM employee;

-- string

-- select name from employee table and display the NAME in uppercase
SELECT UCASE(name) NAME,salary FROM employee; -- alias name

-- select name from employee table and display the character count from name column 
SELECT name,CHAR_LENGTH(name) char_count 
FROM employee;

-- select name from employee table and concat RS. Keyword before the salary
SELECT name,CONCAT('RS.',salary) FROM employee;

-- select name from employee table and concat RS. Keyword before the salary with comma seperated values
SELECT name,CONCAT('RS.',FORMAT(salary,0)) FROM employee;

-- select name and job_desc from employee table and Display First 3 characters in from job_desc
SELECT name,LEFT(job_desc,3) FROM employee;
