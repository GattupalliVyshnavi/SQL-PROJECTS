INSERT INTO departments VALUES (10, 'HR');
INSERT INTO departments VALUES (20, 'IT');
INSERT INTO departments VALUES (30, 'Finance');

INSERT INTO employees VALUES (1, 'Ravi', 20, 'Developer', TO_DATE('2022-01-10','YYYY-MM-DD'));
INSERT INTO employees VALUES (2, 'Anita', 10, 'HR Executive', TO_DATE('2021-05-15','YYYY-MM-DD'));
INSERT INTO employees VALUES (3, 'Kiran', 20, 'Tester', TO_DATE('2023-03-20','YYYY-MM-DD'));
INSERT INTO employees VALUES (4, 'Suman', 30, 'Accountant', TO_DATE('2020-08-12','YYYY-MM-DD'));

INSERT INTO salary VALUES (1, 40000, 5000, 2000);
INSERT INTO salary VALUES (2, 35000, 4000, 1500);
INSERT INTO salary VALUES (3, 30000, 3000, 1000);
INSERT INTO salary VALUES (4, 45000, 6000, 2500);

COMMIT;