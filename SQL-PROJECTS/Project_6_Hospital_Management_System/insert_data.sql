INSERT INTO patients VALUES (1, 'Ravi', 30, 'Male');
INSERT INTO patients VALUES (2, 'Anita', 25, 'Female');

INSERT INTO doctors VALUES (101, 'Dr. Sharma', 'Cardiology');
INSERT INTO doctors VALUES (102, 'Dr. Rao', 'Neurology');

INSERT INTO appointments VALUES (1001, 1, 101, TO_DATE('2024-03-01','YYYY-MM-DD'));
INSERT INTO appointments VALUES (1002, 2, 102, TO_DATE('2024-03-02','YYYY-MM-DD'));

INSERT INTO bills VALUES (1, 1001, 1500, 'Paid');
INSERT INTO bills VALUES (2, 1002, 2000, 'Unpaid');

COMMIT;