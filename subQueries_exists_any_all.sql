use logicfirst;

SELECT * FROM employee;
SELECT * FROM branch;

-- SUBQUERIES
-- employees from chennai branch
SELECT * FROM employee
WHERE branch_id = (SELECT branch_id FROM branch
WHERE branch_name = "CHENNAI");

-- employee with minimum salary
SELECT * FROM employee
WHERE salary = (SELECT MIN(salary) FROM employee);

-- exists used with subquery
-- branches containing atleast one admin
SELECT branch_id,branch_name
FROM branch
WHERE EXISTS (
 SELECT * FROM employee
 WHERE job_desc = "ADMIN" AND branch.branch_id = employee.branch_id
 );
 
 -- ANY
 -- branch info in which any employee gets more than 25L
 SELECT * FROM branch 
 WHERE branch_id = ANY (
 SELECT branch_id FROM employee
 WHERE salary > 2500000);
 
 -- ALL
 -- employees not working in chennai or coimbatore
 SELECT * FROM employee
 WHERE branch_id <> ALL(
 SELECT branch_id FROM branch
 WHERE branch_name IN ("CHENNAI", "COIMBATORE"));
 