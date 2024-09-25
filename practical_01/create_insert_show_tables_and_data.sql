
-- create database
CREATE DATABASE school;

-- use database
USE school;

-- create table named course
CREATE TABLE course(
cid INT,
cname VARCHAR(50)

);

-- insert values into table
INSERT INTO course(cid,cname)
VALUES(1,"physics"),
(2, "maths");

-- view all the values from course table
SELECT * FROM course;

-- view all the tables in the database
SHOW TABLES;