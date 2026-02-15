CREATE VIEW inventory_summary AS
SELECT p.product_name, s.supplier_name, p.price, p.stock
FROM products p
JOIN suppliers s
ON p.supplier_id = s.supplier_id;

-- Use:

SELECT * FROM inventory_summary;