SHOW DATABASES;

CREATE DATABASE logicfirst;

DROP DATABASE logicfirst;

DROP SCHEMA if exists logicfirst;


USE logicfirst;

SHOW TABLES;

CREATE TABLE student(
 
 id INT primary key,
 name VARCHAR(30),
 gpa DECIMAL(3,2)
 
);

DESCRIBE student;

DROP TABLE student;

ALTER TABLE student ADD department VARCHAR(10);

ALTER TABLE student DROP department;

INSERT INTO student VALUES(1, "Naveen", 7.6), (2, "Kumar", 8.1), (3, "Kumar", 8.5) ;

INSERT INTO student(id,name) VALUES(4, "Naveen Kumar");

SELECT id,name FROM student;

SELECT * FROM student;







