CREATE OR REPLACE VIEW sales_report AS
SELECT o.order_id,
       c.customer_name,
       p.product_name,
       oi.quantity,
       (p.price * oi.quantity) AS amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- Use view:

SELECT * FROM sales_report;