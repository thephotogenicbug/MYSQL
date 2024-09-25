
-- create a database
CREATE  DATABASE IF NOT EXISTS instagramDb;

-- use database
USE instagramDb;

-- create table called users if not exists
CREATE TABLE IF NOT EXISTS users(
 userId      INT PRIMARY KEY,
 userName    VARCHAR(50),
 email       VARCHAR(100)
);

-- create table called posts if not exists
CREATE TABLE IF NOT EXISTS posts(
 postId     INT PRIMARY KEY,
 userId     INT,
 caption    VARCHAR(100)
);

-- insert values in the users table
INSERT INTO users(userId, userName, email)
VALUES(1, "naveen", "xyz@gmail.com"),
      (2,"riti", "xyz@gmail.com"),
      (3,"rahul","abc@gmail.com");

-- insert values in the posts table
INSERT INTO posts(postId, userId, caption)
VALUES(1,561,"light"),
	  (2,562,"air"),
      (3,563,"water");
      
-- use database      
USE instagramDb;      

-- show the tables from the database
SHOW TABLES;

-- show all the values from a specific table
SELECT * FROM posts;
SELECT * FROM users;







      