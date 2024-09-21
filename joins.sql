use logicfirst;
DROP TABLE employee; -- drop the table
DROP TABLE branch;

CREATE TABLE branch(

branch_id INT PRIMARY KEY AUTO_INCREMENT,
branch_name VARCHAR(30) NOT NULL,
address VARCHAR(30)

);

CREATE TABLE employee(

empid INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30) NOT NULL,
job_desc VARCHAR(20),
salary INT,
branch_id INT,
CONSTRAINT FK_branchId FOREIGN KEY(branch_id) REFERENCES branch(branch_id)

);

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

SELECT * FROM employee;
SELECT * FROM branch;

SELECT employee.empid,employee.name,employee.job_desc,branch.branch_name
FROM employee
JOIN branch
ON employee.branch_id = branch.branch_id
ORDER BY employee.empid;

SELECT employee.empid,employee.name,employee.job_desc,branch.branch_name
FROM employee
INNER JOIN branch
ON employee.branch_id = branch.branch_id
ORDER BY employee.empid;

SELECT employee.empid,employee.name,employee.job_desc,branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.branch_id = branch.branch_id
ORDER BY employee.empid;

SELECT employee.empid,employee.name,employee.job_desc,branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.branch_id = branch.branch_id
ORDER BY employee.empid;

SELECT employee.empid,employee.name,employee.job_desc,branch.branch_name
FROM employee,branch
WHERE employee.branch_id = branch.branch_id;

SELECT employee.empid,employee.name,employee.job_desc,branch.branch_name
FROM employee
CROSS JOIN branch;

-- branch name and employee count

SELECT branch.branch_name, COUNT(employee.empid) no_of_employee
FROM branch
JOIN employee
ON branch.branch_id = employee.branch_id
GROUP BY employee.branch_id;


