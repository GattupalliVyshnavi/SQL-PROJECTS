CREATE OR REPLACE PROCEDURE book_ticket (
    bid IN NUMBER,
    tid IN NUMBER,
    pid IN NUMBER,
    tdate IN DATE,
    seat IN NUMBER
)
AS
BEGIN
    INSERT INTO bookings
    VALUES (bid, tid, pid, tdate, seat, 'Confirmed');

    COMMIT;
END;
/

-- Call:

EXEC book_ticket(3, 1, 102, SYSDATE, 3);