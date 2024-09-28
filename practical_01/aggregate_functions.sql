
-- COUNT() FUNCTION
SELECT COUNT(name) FROM employee;

-- SUM() FUNCTION
SELECT SUM(salary) FROM employee;

-- AVG() FUNCTION
SELECT AVG(salary) FROM employee;

-- MIN() FUNCTION
SELECT MIN(salary) FROM employee;

-- MAX() FUNCTION
SELECT MAX(salary) FROM employee;

-- GROUP BY 
SELECT department, AVG(salary) AS avgsal
FROM employee
GROUP BY department;

-- HAVING clause
SELECT department, AVG(salary) AS avgsalary
FROM employee
GROUP BY department
HAVING avgsalary > 1500;





