CREATE OR REPLACE FUNCTION calculate_discount (
    p_amount NUMBER
) RETURN NUMBER AS
BEGIN
    IF p_amount >= 2000 THEN
        RETURN p_amount * 0.90; -- 10% discount
    ELSE
        RETURN p_amount;
    END IF;
END;
/

-- Use function:

SELECT bill_id,
       amount,
       calculate_discount(amount) AS discounted_amount
FROM bills;