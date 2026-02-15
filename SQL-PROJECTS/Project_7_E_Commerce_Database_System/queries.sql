-- Show all customers

SELECT * FROM customers;

-- Show all products

SELECT * FROM products;

-- JOIN Query (Order Details)

SELECT c.name, p.product_name, oi.quantity, p.price
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- Total Sales (AGGREGATE)

SELECT SUM(amount) AS total_sales
FROM payments;

-- Subquery (High Value Customers)

SELECT name
FROM customers
WHERE customer_id IN (
    SELECT o.customer_id
    FROM orders o
    JOIN payments p ON o.order_id = p.order_id
    GROUP BY o.customer_id
    HAVING SUM(p.amount) > 40000
);
