DROP FUNCTION IF EXISTS divide_float;

DELIMITER //

CREATE FUNCTION divide_float(dividend FLOAT, divisor FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE result FLOAT;
    IF divisor = 0 THEN
        SET result = NULL;
    ELSE
        SET result = dividend / divisor;
    END IF;
    RETURN result;
END //

DELIMITER ;

SELECT divide_float(quantity, 2) AS divided_quantity
FROM order_details;

