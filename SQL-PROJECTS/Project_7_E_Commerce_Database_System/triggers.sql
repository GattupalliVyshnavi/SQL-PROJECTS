-- TRIGGER (Auto Reduce Stock)

CREATE OR REPLACE TRIGGER update_stock
AFTER INSERT ON order_items
FOR EACH ROW
BEGIN
    UPDATE products
    SET stock = stock - :NEW.quantity
    WHERE product_id = :NEW.product_id;
END;
/

-- Test trigger:

INSERT INTO order_items VALUES (3, 1001, 101, 1);
SELECT * FROM products;