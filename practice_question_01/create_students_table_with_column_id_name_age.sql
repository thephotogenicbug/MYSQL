CREATE DATABASE dummy;
USE dummy;

-- create table named students with columns for id, name, age
CREATE TABLE students(
 id            INT,
 name          VARCHAR(100),
 age           INT
);

-- add a new column grade (VARCHAR) to the students table
ALTER TABLE students
ADD grade VARCHAR(100);

-- rename the grade column to FinalGrade
ALTER TABLE students
RENAME COLUMN grade TO FinalGrade;

-- insert 10 new students as dummy records
INSERT INTO students(id, name, age, FinalGrade)
VALUES
(101,"John Doe",20,'A'),
(102,"Jane Smith",22,'B'),
(103,"Bob Johnson",19,'C'),
(104,"Alice Brown",21,'A'),
(105,"Charlie Davis",20,'B'),
(106,"Emma Wilson",23,'A'),
(107,"Michale Lee",20,'C'),
(108,"Olivia Moore",19,'B'),
(109,"William Turner",21,'A'),
(110,"Sophia Rodriguez",22,'C');

SELECT * FROM students;

-- update the age of student with id 101 to 21
UPDATE students
SET age = 21
WHERE id = 101;

-- delete the student with id 101 from the students table
DELETE FROM students
WHERE id = 101;

-- retrieve all students aged 19 or older
SELECT * FROM students
WHERE age >= 19;

-- retrieve studentds named William Turner or Alice Brown
SELECT * FROM students
WHERE name = "William Turner" OR name = "Alice Brown";
-- method two
SELECT * FROM students
WHERE name in ("William Turner","Alice Brown");

-- retrieve students with grade A OR B and aged 20 or older
SELECT * FROM students
WHERE FinalGrade = 'A' OR FinalGrade = 'B'
AND age >= 20;

-- retrieve students age between 18 and 20
SELECT * FROM students
WHERE age BETWEEN 18 AND 20;

-- retrieve students with age less than 18
SELECT * FROM students
WHERE age <= 18;

-- retrieve students with grades grater than c
SELECT * FROM students
WHERE FinalGrade > 'A';

-- count the total number of students
SELECT COUNT(NAME) FROM students;

-- calculate the average age of students
SELECT AVG(AGE) FROM students;

-- find the sum of ages for students with grade A OR B
SELECT AVG(AGE) FROM students
WHERE FinalGrade = 'A' OR FinalGrade = 'B';

-- group students by grade and count the number of students in each grade
SELECT COUNT(name), FinalGrade FROM students
GROUP BY FinalGrade ORDER BY FinalGrade ASC;

-- group students by age and calculate the average age in each group
SELECT AVG(age), FinalGrade FROM students
GROUP BY FinalGrade ORDER BY FinalGrade ASC ;

-- find the grade with the highest number of students
SELECT COUNT(*), FinalGrade FROM students 
GROUP BY FinalGrade 
ORDER BY FinalGrade DESC
LIMIT 1;


INSERT INTO students(id, name, age, FinalGrade)
VALUES
(111, "Joh", 25, 'C');

-- find grades with an average age grater than 20
SELECT AVG(age), FinalGrade FROM students 
GROUP BY FinalGrade
HAVING AVG(age) > 21;

-- find grades with fewer than 3 students
SELECT COUNT(name), FinalGrade FROM students
GROUP BY FinalGrade
HAVING COUNT(name) > 3;

-- find grades with an average age between 20 and 22
SELECT AVG(age), FinalGrade FROM students
GROUP BY FinalGrade
HAVING AVG(age) BETWEEN 20 AND 22;

-- list all students in asc order of age
SELECT name, age FROM students
ORDER BY age ASC;

-- list students with grade A OR B in desc order of age
SELECT name, age FROM students
WHERE FinalGrade = 'A' OR FinalGrade = 'B'
ORDER BY age DESC;

-- sort students by grade in alphabetical order
SELECT name, age, FinalGrade FROM students
ORDER BY FinalGrade ASC;

-- drop students table
DROP TABLE students










