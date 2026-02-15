INSERT INTO books VALUES (1, 'SQL Basics', 'John', 500, 'Available');
INSERT INTO books VALUES (2, 'Python Guide', 'Alex', 600, 'Available');
INSERT INTO books VALUES (3, 'Java Programming', 'James', 700, 'Available');

INSERT INTO members VALUES (101, 'Ravi', TO_DATE('2023-01-10','YYYY-MM-DD'));
INSERT INTO members VALUES (102, 'Anita', TO_DATE('2023-02-15','YYYY-MM-DD'));
INSERT INTO members VALUES (103, 'Kiran', TO_DATE('2023-03-20','YYYY-MM-DD'));

INSERT INTO issue_records VALUES (1, 1, 101, TO_DATE('2024-01-05','YYYY-MM-DD'), TO_DATE('2024-01-15','YYYY-MM-DD'));
INSERT INTO issue_records VALUES (2, 2, 102, TO_DATE('2024-01-10','YYYY-MM-DD'), NULL);

COMMIT;