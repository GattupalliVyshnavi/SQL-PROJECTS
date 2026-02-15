-- View customers and balances

SELECT c.cust_name, a.acc_no, a.balance
FROM customers c
JOIN accounts a ON c.cust_id = a.cust_id;

-- Total money in bank

SELECT SUM(balance) AS total_bank_balance
FROM accounts;

-- Customers with balance > 6000

SELECT cust_name
FROM customers
WHERE cust_id IN (
    SELECT cust_id
    FROM accounts
    WHERE balance > 6000
);