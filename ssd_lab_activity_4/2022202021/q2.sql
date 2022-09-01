delimiter //

CREATE PROCEDURE IF NOT EXISTS getNames(IN place VARCHAR(255))
BEGIN
    select CUST_NAME from customer where WORKING_AREA=place;
END; //

delimiter ;

call getNames("Bangalore");