CREATE DATABASE students;
USE students;

-- create learner table
CREATE TABLE learner(
Roll       VARCHAR(10),
Name       CHAR(30),
Address    VARCHAR(50)

);

-- add new column in existing table
ALTER TABLE learner
ADD DOB DATE;

-- modify column value in existing table
ALTER TABLE learner
MODIFY Name VARCHAR(40);

-- drop a column from existing table
ALTER TABLE learner
DROP COLUMN DOB;

-- select roll and name from above table and eliminate duplicate rows from above table
SELECT DISTINCT Roll, Name
FROM learner;

-- Sort the following table's record in asc order by name column
SELECT Name FROM learner
ORDER BY Name ASC;

-- Insert dummy data into learner table
INSERT INTO learner(Roll, Name, Marks)
VALUES
(111,"aaa",77),
(222,"accc",66),
(333,"beee",99);

-- update existing marks from 77 to 88
UPDATE learner
SET Marks = 88
WHERE Marks = 77;

-- delete third row from the table learner
DELETE FROM learner
WHERE Marks = 99;

-- delete all the rows from the table
DELETE FROM learner;

-- Insert dummy data into learner table
INSERT INTO learner(Roll, Name, Marks)
VALUES
(555,"vvv",89);

ALTER TABLE learner
ADD MARKS INT;

-- Display table structure
DESC learner;

SELECT * FROM learner;

