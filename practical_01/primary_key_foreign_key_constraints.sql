
USE college;

-- base table
CREATE TABLE student(
 id      INT PRIMARY KEY,
 name    VARCHAR(30)
);

-- child table
CREATE TABLE course(
 cid     INT PRIMARY KEY,
 id      INT,
 FOREIGN KEY(id) REFERENCES student(id)
);