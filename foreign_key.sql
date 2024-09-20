use logicfirst;

DROP TABLE employee;

-- brach table
CREATE TABLE branch(
branch_id INT PRIMARY KEY AUTO_INCREMENT,
branch_name VARCHAR(30) NOT NULL,
address VARCHAR(200)

);
-- main table
CREATE TABLE employee(
 
 empid INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(30),
 job_desc VARCHAR(20),
 SALARY INT,
 branch_id INT,
 CONSTRAINT FK_branchId FOREIGN KEY(branch_id) REFERENCES branch(branch_id)
 
);

-- remove foreign_key constraint
ALTER TABLE employee
DROP FOREIGN KEY FK_branchId;

SELECT * FROM employee;

INSERT INTO employee VALUES('Ram', 'ADMIN', 1000000);
INSERT INTO employee VALUES('Harini', 'MANAGER', 2500000);
INSERT INTO employee VALUES('George', 'SALES', 2000000);
INSERT INTO employee VALUES('Ramya', 'SALES', 1300000);
INSERT INTO employee VALUES('Meena', 'HR', 2000000);
INSERT INTO employee VALUES('Ashok', 'MANAGER', 3000000);
INSERT INTO employee VALUES('Abdul', 'HR', 2000000);
INSERT INTO employee VALUES('Ramya', 'ENGINEER', 1000000);
INSERT INTO employee VALUES('Raghu', 'CEO', 8000000);
INSERT INTO employee VALUES('Arvind', 'MANAGER', 2800000);
INSERT INTO employee VALUES('Akashay', 'ENGINEER', 1000000);
INSERT INTO employee VALUES('John', 'ADMIN', 2200000);
INSERT INTO employee VALUES('Abinaya', 'ENGINEER', 2100000);