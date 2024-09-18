USE logicfirst;

SELECT * FROM employee;

SELECT DISTINCT job_desc FROM employee;

-- order by
SELECT * FROM employee
ORDER BY name;

-- select everything from employee table and order by salary in asc
SELECT * FROM employee
ORDER BY salary;

-- select everything from employee table and order by salary in dexc
SELECT * FROM employee
ORDER BY salary DESC;

-- select everything from employee table and order by salary and name in asc
SELECT * FROM employee
ORDER BY salary,name;

-- select everything from employee table where job_desc is MANAGER and order by salary in asc
SELECT * FROM employee
WHERE job_desc = "MANAGER"
ORDER BY salary;

-- select everything from employee table and order by custom preference
SELECT * FROM employee
ORDER BY ( CASE job_desc
WHEN 'CEO' THEN 1
WHEN 'MANAGER' THEN 2
WHEN 'HR' THEN 3
WHEN 'ANALYST' THEN 4
WHEN 'SALES' THEN 5
ELSE 100 END
), name;


