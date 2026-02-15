INSERT INTO customers VALUES (1, 'Ravi', 'ravi@gmail.com');
INSERT INTO customers VALUES (2, 'Anu', 'anu@gmail.com');

INSERT INTO products VALUES (101, 'Mobile', 15000, 50);
INSERT INTO products VALUES (102, 'Laptop', 60000, 20);

INSERT INTO orders VALUES (1001, 1, SYSDATE);
INSERT INTO orders VALUES (1002, 2, SYSDATE);

INSERT INTO order_items VALUES (1, 1001, 101, 2);
INSERT INTO order_items VALUES (2, 1002, 102, 1);

INSERT INTO payments VALUES (1, 1001, 30000, SYSDATE);
INSERT INTO payments VALUES (2, 1002, 60000, SYSDATE);

COMMIT;