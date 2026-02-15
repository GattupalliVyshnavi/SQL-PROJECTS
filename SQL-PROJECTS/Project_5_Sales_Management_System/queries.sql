-- Show all orders with customer name

SELECT o.order_id, c.customer_name, o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Show order details with product names

SELECT o.order_id, c.customer_name, p.product_name, oi.quantity
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- Calculate total amount per order

SELECT o.order_id,
       SUM(p.price * oi.quantity) AS total_amount
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.order_id;

-- Customer-wise total purchase

SELECT c.customer_name,
       SUM(p.price * oi.quantity) AS total_purchase
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name;

-- Best-selling product (highest quantity sold)

SELECT p.product_name,
       SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- Orders after a specific date

SELECT *
FROM orders
WHERE order_date > TO_DATE('2024-02-01','YYYY-MM-DD');