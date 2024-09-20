use logicfirst;

DROP TABLE employee;

DROP TABLE branch;

-- brach table
CREATE TABLE branch(
branch_id INT PRIMARY KEY AUTO_INCREMENT,
branch_name VARCHAR(30) NOT NULL,
address VARCHAR(200)

);

-- main table on delete SET NULL
CREATE TABLE employee(
 
 empid INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(30),
 job_desc VARCHAR(20),
 SALARY INT,
 branch_id INT,
 CONSTRAINT FK_branchId FOREIGN KEY(branch_id) REFERENCES branch(branch_id)
 ON DELETE SET NULL -- CASCADE OR SET NULL
 
);

-- main table on delete CASECADE (deletes the entire row)
CREATE TABLE employee(
 
 empid INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(30),
 job_desc VARCHAR(20),
 SALARY INT,
 branch_id INT,
 CONSTRAINT FK_branchId FOREIGN KEY(branch_id) REFERENCES branch(branch_id)
 ON DELETE SET NULL -- CASCADE OR SET NULL
 
);

-- insert data
INSERT INTO branch VALUES(1,"Chennai","16 ABC Road");
INSERT INTO branch VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO branch VALUES(3,"Mumbai","25 XYZ Road");
INSERT INTO branch VALUES(4,"Hydrabad","32 10th Street");

INSERT INTO employee VALUES(1,'Ram','ADMIN',1000000,2);
INSERT INTO employee VALUES(2,'Harini','MANAGER',2500000,2);
INSERT INTO employee VALUES(3,'George','SALES',2000000,1);
INSERT INTO employee VALUES(4,'Ramya','SALES',1300000,2);
INSERT INTO employee VALUES(5,'Meena','HR',2000000,3);
INSERT INTO employee VALUES(6,'Ashok','MANAGER',3000000,1);
INSERT INTO employee VALUES(7,'Abdul','HR',2000000,1);
INSERT INTO employee VALUES(8,'Ramya','ENGINEER',1000000,2);
INSERT INTO employee VALUES(9,'Raghu','CEO',8000000,3);
INSERT INTO employee VALUES(10,'Arvind','MANAGER',2800000,3);
INSERT INTO employee VALUES(11,'Akshay','ENGINEER',1000000,1);
INSERT INTO employee VALUES(12,'John','ADMIN',2200000,1);
INSERT INTO employee VALUES(13,'Abinaya','ENGINEER',2100000,2);
INSERT INTO employee VALUES(14,'Vidya','ADMIN',2200000,NULL);
INSERT INTO employee VALUES(15,'Ranjani','ENGINEER',2100000,NULL);

-- select everything from employee table and display the result
SELECT * FROM employee;

-- select everything from branch table and display the result
SELECT * FROM branch;

-- delete from branch table where branch_id set to 2
DELETE FROM branch
WHERE branch_id = 2;

