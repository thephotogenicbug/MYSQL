USE company;
-- emp salary > min_salary

-- min salary
SELECT MIN(salary)
FROM employee;

-- salary > min_salary
SELECT name, salary
FROM employee
WHERE salary > (SELECT MIN(salary)
FROM employee);

-- age = min_age
-- min_age
SELECT MIN(age) 
FROM employee;

-- age = min_age
SELECT name, age
FROM employee
WHERE age = (SELECT MIN(age) 
FROM employee);

-- min age
SELECT MIN(age) AS min_age
FROM employee;

-- all the emp age > min_age
SELECT emp.name, emp.age
FROM employee emp, (SELECT MIN(age) AS min_age
FROM employee) AS min_age_query
WHERE emp.age > min_age_query.min_age;

-- avg age
SELECT AVG(age)
FROM employee;

-- age avg age
SELECT age, (SELECT AVG(age)
FROM employee) AS avg_age
FROM employee;













