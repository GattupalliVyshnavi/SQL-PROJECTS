INSERT INTO departments VALUES (1, 'HR');
INSERT INTO departments VALUES (2, 'IT');
INSERT INTO departments VALUES (3, 'Finance');

INSERT INTO employees VALUES (101, 'Ravi', 2, 50000, DATE '2021-01-10', 'Active');
INSERT INTO employees VALUES (102, 'Anu', 1, 40000, DATE '2020-05-20', 'Active');
INSERT INTO employees VALUES (103, 'Kiran', 3, 60000, DATE '2019-03-15', 'Left');

INSERT INTO attendance VALUES (1, 101, SYSDATE, 'Present');
INSERT INTO attendance VALUES (2, 102, SYSDATE, 'Absent');
INSERT INTO attendance VALUES (3, 103, SYSDATE, 'Present');

COMMIT;