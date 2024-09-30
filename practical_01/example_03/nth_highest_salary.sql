USE company;

-- 4th highest salary
SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 3,1;