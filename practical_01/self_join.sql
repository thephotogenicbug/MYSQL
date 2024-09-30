-- 0. DROP DATABASE
DROP DATABASE school;
-- 1. make a database for a school
CREATE DATABASE school;
USE school;

-- 2. Make a student table in the school database
CREATE TABLE student(
s_id         INT,
name         VARCHAR(50),
mentor_id    INT
);

-- 3. Fill details in the table
INSERT INTO student(s_id,name,mentor_id)
VALUES
(1,"Ram",NULL),
(2,"Rahul",1),
(3,"Riti",1),
(4,"Riya",3);

-- 4. See all the data
SELECT * FROM student;

-- SELF JOIN
SELECT s1.name AS mentor_name, s2.name AS student_name
FROM student as s1
JOIN student as s2
WHERE s1.s_id = s2.mentor_id;











