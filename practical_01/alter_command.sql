USE xyz;

SELECT * FROM employee;

-- add a column named dob in employee table
ALTER TABLE employee
ADD dob VARCHAR(20) DEFAULT "np";

-- drop a column named dob from employee table
ALTER TABLE employee
DROP COLUMN dob;

-- modify the age datatype from INT to VARCHAR from employee table
ALTER TABLE employee
MODIFY age VARCHAR(3);

-- change the column name age to employee age from employee table
ALTER TABLE employee
CHANGE age employee_age VARCHAR(3);

-- rename the column name employee_age TO age from employee table
ALTER TABLE employee
RENAME COLUMN employee_age TO age;





