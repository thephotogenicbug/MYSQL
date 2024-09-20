use logicfirst;

SELECT * FROM employee;



DROP TABLE employee;

-- create table named employee with constraints
CREATE TABLE employee(
 
 empid INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(30) NOT NULL,
 job_desc VARCHAR(20) DEFAULT 'unassigned',
 SALARY INT,
 pan VARCHAR(10) UNIQUE,
 CHECK (salary>1000000)
 
);
-- create index
CREATE INDEX name_index ON employee(name);

-- drop index
ALTER TABLE employee
DROP INDEX name_index;

-- add index on a column
ALTER TABLE employee
ADD INDEX (name_index);

-- show index from employee table
SHOW INDEX FROM employee;

