CREATE OR REPLACE FUNCTION calculate_fare(age NUMBER)
RETURN NUMBER
IS
    base_fare NUMBER := 500;
BEGIN
    IF age < 12 THEN
        RETURN base_fare * 0.5;
    ELSIF age > 60 THEN
        RETURN base_fare * 0.7;
    ELSE
        RETURN base_fare;
    END IF;
END;
/

-- Test:

SELECT passenger_name, calculate_fare(age) AS ticket_fare
FROM passengers;