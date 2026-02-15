INSERT INTO students VALUES (1, 'Rahul', 20, 'Male');
INSERT INTO students VALUES (2, 'Anita', 21, 'Female');
INSERT INTO students VALUES (3, 'Kiran', 22, 'Male');

INSERT INTO courses VALUES (101, 'SQL');
INSERT INTO courses VALUES (102, 'Python');
INSERT INTO courses VALUES (103, 'Java');

INSERT INTO enrollments VALUES (1, 1, 101);
INSERT INTO enrollments VALUES (2, 1, 102);
INSERT INTO enrollments VALUES (3, 2, 101);
INSERT INTO enrollments VALUES (4, 3, 103);

COMMIT;