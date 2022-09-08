delimiter //
CREATE PROCEDURE IF NOT EXISTS retrieve() 
BEGIN
    DECLARE cust_name varchar(255) DEFAULT "";
    DECLARE cust_city varchar(255) DEFAULT "";
    DECLARE cust_country varchar(255) DEFAULT "";
    DECLARE cust_grade INT DEFAULT 0;
    DECLARE ans varchar(255) DEFAULT "";
    DECLARE numRows int DEFAULT 0;
    
    DECLARE ptr
            CURSOR FOR 
                SELECT CUST_NAME, CUST_CITY, CUST_COUNTRY, GRADE from customer where AGENT_CODE like 'A00%';
    
    OPEN ptr;

    SET numRows = 25;

    custLoop: LOOP
        IF numRows > 0 THEN
            FETCH ptr INTO cust_name, cust_city, cust_country, cust_grade;
            SET ans = CONCAT(ans, cust_name, cust_city, cust_country, cust_grade);
            SET numRows = numRows - 1;
            Select cust_name, cust_city, cust_country, cust_grade as x;
            Select x
        END IF;
        ITERATE custLoop;
    END LOOP;
END;//

delimiter ;
CALL retrieve();
