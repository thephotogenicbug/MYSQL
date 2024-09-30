-- UNION
SELECT id FROM customer
UNION
SELECT id FROM orders;

-- UNION ALL
SELECT id FROM customer
UNION ALL
SELECT id FROM orders;
