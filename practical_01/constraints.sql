
CREATE DATABASE college;

USE college;

-- unique constraints example
CREATE TABLE student(
 phoneNumber    INT UNIQUE
);

INSERT INTO student(phonenumber)
VALUES
(123),
(456);

-- not null constraints example
CREATE TABLE student1(
 age           INT,
 roll_number INT NOT NULL
);

INSERT INTO student1(age, roll_number)
VALUES
(27,1);

-- check constraints example
CREATE TABLE student2(
 age    INT CHECK(age>18)
);

INSERT INTO student2(age)
VALUES
(23);

-- default constraints example
CREATE TABLE student3(
 schoolName     VARCHAR(50) DEFAULT 'XYZ',
 age            INT
);

INSERT INTO student3(age)
VALUES
(20);

SELECT * FROM student3;

-- primary key constraint example always unique and not null
CREATE TABLE student4(
age           INT,
roll_number   INT PRIMARY KEY
);

-- check unique
INSERT INTO student4(age, roll_number)
VALUES
(12,1),
(13,2);

-- no null
INSERT INTO student4(age)
VALUES
(12),
(13),
(14);

-- foreign key constraint establishs relationship between two tables
CREATE TABLE course(
 course_name     VARCHAR(50),
 roll_number     INT,
 FOREIGN KEY (roll_number) REFERENCES student4(roll_number)
);




