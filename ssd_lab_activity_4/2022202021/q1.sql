DELIMITER //
CREATE PROCEDURE IF NOT EXISTS addNumbers(IN num1 INT, IN num2 INT, OUT summation INT)
BEGIN 
SET summation = num1 + num2;
SELECT summation;
END;//
DELIMITER ;
CALL addNumbers(2,4, @summation);
