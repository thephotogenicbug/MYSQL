USE logicfirst;

SELECT * FROM employee;
SELECT * FROM branch;

-- view
CREATE VIEW employee_branch
AS
SELECT employee.empid,employee.name,employee.job_desc,branch.branch_name
FROM employee
INNER JOIN branch
ON employee.branch_id = branch.branch_id
ORDER BY empid;

-- modify or define view query
CREATE OR REPLACE VIEW employee_branch
AS
SELECT employee.empid,employee.name,employee.job_desc,branch.branch_name
FROM employee
INNER JOIN branch
ON employee.branch_id = branch.branch_id;


-- run view query
SELECT * FROM employee_branch;

-- run view query using filter
SELECT * FROM employee_branch
WHERE job_desc = "MANAGER";

-- drop view
DROP VIEW employee_branch;

SELECT * FROM employee
WHERE job_desc = "MANAGER";



