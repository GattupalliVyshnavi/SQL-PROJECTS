CREATE VIEW booking_summary AS
SELECT p.passenger_name, t.train_name, b.travel_date, b.seat_no, b.status
FROM bookings b
JOIN passengers p ON b.passenger_id = p.passenger_id
JOIN trains t ON b.train_id = t.train_id;

-- Use:

SELECT * FROM booking_summary;