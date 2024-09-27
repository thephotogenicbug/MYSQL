use xyz;

SELECT * FROM employees;

-- rename employee table TO employees table
RENAME TABLE employee TO employees;

-- rename name TO emp_name in employees table
ALTER TABLE employees
RENAME COLUMN name TO emp_name;
