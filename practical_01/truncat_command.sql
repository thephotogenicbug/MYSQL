use xyz;

CREATE TABLE salarydetails(
 salary        INT,
 increment     INT
);

INSERT INTO salarydetails(salary,increment)
VALUES
(1200,6),
(1500,4);

SELECT * FROM salarydetails;

-- truncate command deletes all the data from salarydetails table but preserves its structure
TRUNCATE TABLE salarydetails;