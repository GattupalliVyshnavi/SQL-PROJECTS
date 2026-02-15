CREATE OR REPLACE FUNCTION calculate_stock_value(pid NUMBER)
RETURN NUMBER
IS
    total_value NUMBER;
BEGIN
    SELECT price * stock INTO total_value
    FROM products
    WHERE product_id = pid;

    RETURN total_value;
END;
/

-- Test:

SELECT product_name, calculate_stock_value(product_id) AS stock_value
FROM products;