CREATE OR REPLACE TRIGGER reduce_stock_after_sale
AFTER INSERT ON sales
FOR EACH ROW
BEGIN
    UPDATE products
    SET stock = stock - :NEW.quantity
    WHERE product_id = :NEW.product_id;
END;
/

-- Test:

INSERT INTO sales VALUES (3, 101, 5, SYSDATE);
SELECT * FROM products;