-- Show all products
SELECT * FROM products;

-- Products with supplier details
SELECT p.product_name, s.supplier_name, p.stock
FROM products p
JOIN suppliers s
ON p.supplier_id = s.supplier_id;

-- Total stock value
SELECT SUM(price * stock) AS total_stock_value
FROM products;

-- Low stock products
SELECT product_name, stock
FROM products
WHERE stock < 50;

-- Best selling products
SELECT product_id, SUM(quantity) AS total_sold
FROM sales
GROUP BY product_id
ORDER BY total_sold DESC;

-- Products purchased more than sold
SELECT p.product_name
FROM products p
WHERE p.stock > (
    SELECT AVG(stock) FROM products
);