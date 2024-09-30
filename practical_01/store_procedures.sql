USE ecommerce;
-- create a procedure to get all order details
DELIMITER /
CREATE PROCEDURE getOrderDetails()
BEGIN 
SELECT * FROM orders;
END /
DELIMITER ;


CALL getOrderDetails();