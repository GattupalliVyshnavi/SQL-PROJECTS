INSERT INTO customers VALUES (1, 'Ravi', 'Hyderabad');
INSERT INTO customers VALUES (2, 'Anita', 'Chennai');

INSERT INTO products VALUES (101, 'Laptop', 50000);
INSERT INTO products VALUES (102, 'Mobile', 20000);
INSERT INTO products VALUES (103, 'Headphones', 3000);

INSERT INTO orders VALUES (1001, 1, TO_DATE('2024-02-01','YYYY-MM-DD'));
INSERT INTO orders VALUES (1002, 2, TO_DATE('2024-02-02','YYYY-MM-DD'));

INSERT INTO order_items VALUES (1, 1001, 101, 1);
INSERT INTO order_items VALUES (2, 1001, 103, 2);
INSERT INTO order_items VALUES (3, 1002, 102, 1);

COMMIT;