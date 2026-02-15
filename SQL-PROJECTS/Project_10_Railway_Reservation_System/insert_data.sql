INSERT INTO trains VALUES (1, 'Express 101', 'Hyderabad', 'Delhi', 100);
INSERT INTO trains VALUES (2, 'Superfast 202', 'Bangalore', 'Chennai', 80);

INSERT INTO passengers VALUES (101, 'Ravi', 28, 'Male');
INSERT INTO passengers VALUES (102, 'Anu', 25, 'Female');

INSERT INTO bookings VALUES (1, 1, 101, SYSDATE, 1, 'Confirmed');
INSERT INTO bookings VALUES (2, 2, 102, SYSDATE, 2, 'Confirmed');

COMMIT;