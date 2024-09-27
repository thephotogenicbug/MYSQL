
-- 1. Make a database for a company
CREATE DATABASE company;

USE company;

-- 2. Make an employee table in the company database;
CREATE TABLE employee(
 id         INT PRIMARY KEY,
 name       VARCHAR(50),
 age        INT,
 department VARCHAR(50),
 city       VARCHAR(50),
 salary     INT
);

-- 3. Fill details in the table
INSERT INTO employee(id, name, age, department, city, salary)
VALUES
(1,"Rahul",25,"IT", "Mumbai",1500),
(2,"Afsara",26,"HR", "Pune",2000),
(3,"Abhimanyu",27,"IT", "Mumbai",2500),
(4,"Aditya",25,"Marketing", "Surat",2400),
(5,"Raj",24,"Finance", "Indore",1500);

-- 4. see all the data
SELECT * FROM employee;

-- get distinct values from department column in employee table
SELECT DISTINCT department FROM employee;

-- combination of distinct values from two columns in employee table
SELECT DISTINCT department, age FROM employee;




