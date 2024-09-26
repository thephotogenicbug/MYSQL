-- 1. make a database for a company xyz
CREATE DATABASE xyz;

-- use the database named xyz
USE xyz;

-- 2. Make an employee table in the xyz database.
CREATE TABLE employee(
id         INT PRIMARY KEY,
name       VARCHAR(50),
age        INT,
department VARCHAR(50),
city       VARCHAR(50),
SALARY     INT

);

-- 3. fill the details in the table named employee
INSERT INTO employee(id,name,age,department,city,salary)
VALUES
(1,"Rahul",25,"IT","Mumbai",1500),
(2,"Afsara",26,"HR","Pune",2000),
(3,"Abhimanyu",27,"IT","Mumbai",2500),
(4,"Aditya",25,"Marketing","Surat",2400),
(5,"Raj",24,"Finance","Indore",1500);

-- 4. see all the data
SELECT * FROM employee;

-- update employee table and set salary to 50000 where department is = "HR"
UPDATE employee
SET salary = 50000
WHERE department = "HR";

-- delete 'IT' department from employee table
DELETE FROM employee
WHERE department = "IT";

-- delete employee named 'Raj' from employee table
DELETE FROM employee
WHERE name = "Raj";

-- set update mode 0 to turnoff 1 to turnon
SET SQL_SAFE_UPDATES = 0;




