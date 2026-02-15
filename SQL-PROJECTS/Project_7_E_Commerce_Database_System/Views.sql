-- VIEW (Sales Summary)

CREATE VIEW sales_summary AS
SELECT c.name, p.product_name, oi.quantity, p.price,
       (oi.quantity * p.price) AS total_price
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- Use:

SELECT * FROM sales_summary;