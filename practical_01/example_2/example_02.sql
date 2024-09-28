
-- see all the data
SELECT * FROM employee;

-- find total no of employee from each city
SELECT city, COUNT(name) AS no_of_emp
FROM employee
GROUP BY city;

-- find max salary in each city in desc order
SELECT city, MAX(salary) AS max_salary
FROM employee
GROUP BY city
ORDER BY max_salary DESC;

-- display department names along side the total count of employees in each department
-- and sort the results order by desc order
SELECT department, COUNT(id) AS totalemp
FROM employee
GROUP BY department
ORDER BY totalemp DESC;

-- list the departments where avg salary > 1200 and display department name and avg salary
SELECT department, AVG(salary) AS avgsalary
FROM employee
GROUP BY department
HAVING avgsalary > 1200;