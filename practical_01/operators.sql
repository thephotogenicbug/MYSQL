
-- AND OPERATOR
SELECT * FROM employee
WHERE age > 20 AND department = "IT";

-- OR OPERATOR
SELECT * FROM employee
WHERE age > 20 OR department = "IT";

-- NOT OPERATOR
SELECT * FROM employee
WHERE department NOT IN ("IT","HR");

-- IN OPERATOR
SELECT * FROM employee
WHERE department IN ("IT", "HR");

-- IS NULL / NOT NULL OPERATOR
SELECT * FROM employee
WHERE department IS NOT NULL;

-- LIKE OPERATOR %
SELECT * FROM employee
WHERE name LIKE "A%";

-- LIKE OPERATOR _
SELECT * FROM employee
WHERE name LIKE "_A%";

-- BETWEEN OPERATOR
SELECT * FROM employee
WHERE salary BETWEEN 1200 AND 1500;


