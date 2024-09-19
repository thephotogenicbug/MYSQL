-- mention the database name to be used
use logicfirst;

-- DATE

-- alter the table name employee by adding column Hire_date as DATE FORMAT
ALTER TABLE employee ADD COLUMN Hire_date DATE;

-- select all from employee table and display the result
SELECT * FROM employee;

-- select employee table and set hire_date to 2014-07-05
UPDATE employee 
SET Hire_date = "2014-07-05";

-- select employee table and update hire_date column where job_desc is ANALYST
UPDATE employee 
SET Hire_date = "2015-07-05"
WHERE job_desc = "ANALYST";

-- FUNCTIONS

-- display the current date and time
SELECT NOW();

-- display the current date and time
SELECT DATE(NOW());

-- display the current date
SELECT CURDATE();

-- display the date format in day/month/year
SELECT DATE_FORMAT(CURDATE(),"%d/%m/%Y") AS date;

-- display the date difference from the current date to set date
SELECT DATEDIFF(CURDATE(),"2025/04/01") AS days;

-- display the date from 1 week from current date
SELECT DATE_ADD(CURDATE(), INTERVAL 1 WEEK) AS 'after one week';

