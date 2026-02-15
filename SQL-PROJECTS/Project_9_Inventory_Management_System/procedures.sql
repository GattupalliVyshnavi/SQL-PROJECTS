CREATE OR REPLACE PROCEDURE add_purchase (
    pid IN NUMBER,
    qty IN NUMBER
)
AS
BEGIN
    UPDATE products
    SET stock = stock + qty
    WHERE product_id = pid;

    INSERT INTO purchases
    VALUES (purchases_seq.NEXTVAL, pid, qty, SYSDATE);

    COMMIT;
END;
/

-- Call:

EXEC add_purchase(101, 25);