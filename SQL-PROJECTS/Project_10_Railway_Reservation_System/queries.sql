-- Show all trains
SELECT * FROM trains;

-- Show all passengers
SELECT * FROM passengers;

-- Booking details with train and passenger
SELECT p.passenger_name, t.train_name, b.travel_date, b.seat_no, b.status
FROM bookings b
JOIN passengers p ON b.passenger_id = p.passenger_id
JOIN trains t ON b.train_id = t.train_id;

-- Total bookings per train
SELECT train_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY train_id;

-- Available seats per train
SELECT t.train_name,
       (t.total_seats - COUNT(b.booking_id)) AS available_seats
FROM trains t
LEFT JOIN bookings b ON t.train_id = b.train_id
GROUP BY t.train_name, t.total_seats;

-- Passengers older than average age
SELECT passenger_name, age
FROM passengers
WHERE age > (SELECT AVG(age) FROM passengers);