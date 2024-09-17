-- create database named logicfirst
CREATE DATABASE logicfirst;

-- drop database named logicfirst
DROP DATABASE logicfirst;

-- create database named logicfirst if exists
DROP SCHEMA if exists logicfirst;

-- mention which db to use
use logicfirst;

-- create table
CREATE TABLE employee(
 empid INT primary key,
 name VARCHAR(30),
 job_desc VARCHAR(20),
 salary INT

);

-- insert data into employee table
INSERT INTO employee VALUES(1,'Ram', 'ADMIN', 1000000);
INSERT INTO employee VALUES(2,'Harini', 'MANAGER', 2500000);
INSERT INTO employee VALUES(3,'George', 'SALES', 2000000);
INSERT INTO employee VALUES(4,'Ramya', 'SALES', 1300000);
INSERT INTO employee VALUES(5,'Meena', 'HR', 2000000);
INSERT INTO employee VALUES(6,'Ashok', 'MANAGET', 3000000);
INSERT INTO employee VALUES(7,'Abdul', 'HR', 2000000);
INSERT INTO employee VALUES(8,'Ramya', 'ENGINEER', 1000000);
INSERT INTO employee VALUES(9,'Raghu', 'CEO', 8000000);
INSERT INTO employee VALUES(10,'Arvind', 'MANAGER', 2800000);
INSERT INTO employee VALUES(11,'Akashay', 'ENGINEER', 1000000);
INSERT INTO employee VALUES(12,'John', 'ADMIN', 2200000);
INSERT INTO employee VALUES(13,'Abinaya', 'ENGINEER', 2100000);


-- select everthing from employee table and display
SELECT * FROM employee;


-- select everthing from employee where name is Ramya
SELECT * FROM employee
WHERE name="Ramya";


-- select everthing from employee where name is not Ramya
SELECT * FROM employee
WHERE name<>"Ramya";


-- select everthing from employee where salary is more than 2000000
SELECT * FROM employee
WHERE salary > 2000000;


-- select everthing from employee where salary is less than 2600000 AND job desc = MANAGER
SELECT * FROM employee
WHERE salary < 2600000 AND job_desc="MANAGER";


-- select everthing from employee where job desc = HR OR job desc = SALES
SELECT * FROM employee
WHERE job_desc = "HR" OR job_desc = "SALES";


-- select everthing from employee where job desc IN HR, SALES
SELECT * FROM employee
WHERE job_desc IN ("HR", "SALES");


-- select everthing from employee where job desc NOT IN CEO, MANAGER
SELECT * FROM employee
WHERE job_desc NOT IN ("CEO", "MANAGER");


-- select everthing from employee where salary is between 2000000 AND 3000000
SELECT * FROM employee
WHERE salary BETWEEN 2000000 AND 3000000;


-- select everthing from employee and LIMIT the result to 5
SELECT * FROM employee
LIMIT 5;


-- LIKE
-- WILDCARDS % (ZERO OR MORE CHARACTERS) _ (ONE CHARACTER)

-- select eveything from employee table and display result where name Starts from First Character A 
SELECT * FROM employee
WHERE name LIKE 'A%';


-- select eveything from employee table and display result where name Starts from First Character A and Ends with Last Character A
SELECT * FROM employee
WHERE name LIKE 'A%A';


-- select eveything from employee table and display result where name has I Character
SELECT * FROM employee
WHERE name LIKE '%i%';


-- select eveything from employee table and display result where name has I Character as third letter
SELECT * FROM employee
WHERE name LIKE '__I%';


-- update eveything from employee table and set job desc to ANALYST
UPDATE employee
SET job_desc = "ANALYST";


-- update employee table and set job_desc = ANALYST where job_desc is ENGINEER
UPDATE employee
SET job_desc = "ANALYST"
WHERE job_desc = "ENGINEER";


-- DELETE employee table where employee id is equal to 12
DELETE FROM employee
WHERE empid = 12;

