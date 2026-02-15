CREATE OR REPLACE TRIGGER prevent_overbooking
BEFORE INSERT ON bookings
FOR EACH ROW
DECLARE
    booked_seats NUMBER;
    max_seats NUMBER;
BEGIN
    SELECT COUNT(*) INTO booked_seats
    FROM bookings
    WHERE train_id = :NEW.train_id;

    SELECT total_seats INTO max_seats
    FROM trains
    WHERE train_id = :NEW.train_id;

    IF booked_seats >= max_seats THEN
        RAISE_APPLICATION_ERROR(-20001, 'No seats available for this train');
    END IF;
END;
/