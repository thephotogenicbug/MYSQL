use logicfirst;

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

INSERT INTO employee(name,salary) VALUES("Ram", 1500000);

SELECT * FROM employee;

-- create table named employee
CREATE TABLE employee(
 
 empid INT PRIMARY KEY,
 name VARCHAR(30),
 job_desc VARCHAR(20),
 SALARY INT
 
);

-- add not null constrain 
ALTER TABLE employee
MODIFY name VARCHAR(30) NOT NULL;

-- drop not null constrait
ALTER TABLE employee
MODIFY name VARCHAR(30);

-- add default constraint
ALTER TABLE employee
ALTER job_desc SET DEFAULT 'unassigned';

-- drop default constraint
ALTER TABLE employee
ALTER job_desc DROP DEFAULT;

-- add check constraint
ALTER TABLE employee
ADD CONSTRAINT check_salary CHECK (salary>1000000);

-- drop check constraint
ALTER TABLE employee
DROP CHECK check_salary;


