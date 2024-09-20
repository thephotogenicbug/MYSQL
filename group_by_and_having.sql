use logicfirst;

SELECT * FROM employee
ORDER BY job_desc ;

SELECT job_desc,avg(salary)
FROM employee
GROUP BY job_desc;

SELECT job_desc,COUNT(empid)
FROM employee
GROUP BY job_desc;

SELECT job_desc,COUNT(empid)
FROM employee
GROUP BY job_desc
HAVING COUNT(empid) > 1;

SELECT job_desc,COUNT(empid)
FROM employee
GROUP BY job_desc
HAVING COUNT(empid) > 1
ORDER BY job_desc;

SELECT job_desc,COUNT(empid)
FROM employee
WHERE salary > 1500000
GROUP BY job_desc
HAVING COUNT(empid) > 1
ORDER BY job_desc;

-- where filters rows
-- having filters groups

