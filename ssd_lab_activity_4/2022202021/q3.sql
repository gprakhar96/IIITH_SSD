delimiter //
CREATE PROCEDURE IF NOT EXISTS getInfo()
BEGIN
    select CUST_NAME, GRADE
    from customer
    where (OPENING_AMT + RECEIVE_AMT) > 1000;
END;//

delimiter ;
call getInfo();