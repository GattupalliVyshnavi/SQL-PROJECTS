INSERT INTO suppliers VALUES (1, 'ABC Traders', 'Hyderabad');
INSERT INTO suppliers VALUES (2, 'XYZ Suppliers', 'Bangalore');

INSERT INTO products VALUES (101, 'Keyboard', 1, 700, 100);
INSERT INTO products VALUES (102, 'Mouse', 2, 500, 150);

INSERT INTO purchases VALUES (1, 101, 20, SYSDATE);
INSERT INTO purchases VALUES (2, 102, 30, SYSDATE);

INSERT INTO sales VALUES (1, 101, 10, SYSDATE);
INSERT INTO sales VALUES (2, 102, 15, SYSDATE);

COMMIT;