-- WINDOW FUNCTION (Customer Ranking)

SELECT c.name,
       SUM(p.amount) AS total_spent,
       RANK() OVER (ORDER BY SUM(p.amount) DESC) AS rank_no
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.name;

-- FUNCTION (Calculate Discount)

CREATE OR REPLACE FUNCTION calc_discount(amount NUMBER)
RETURN NUMBER
IS
BEGIN
    IF amount > 50000 THEN
        RETURN amount * 0.10;
    ELSE
        RETURN amount * 0.05;
    END IF;
END;
/

-- Use it:

SELECT amount, calc_discount(amount) AS discount
FROM payments;