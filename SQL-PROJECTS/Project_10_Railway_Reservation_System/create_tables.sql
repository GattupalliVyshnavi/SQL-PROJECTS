CREATE TABLE trains (
    train_id NUMBER PRIMARY KEY,
    train_name VARCHAR2(50),
    source VARCHAR2(50),
    destination VARCHAR2(50),
    total_seats NUMBER
);

CREATE TABLE passengers (
    passenger_id NUMBER PRIMARY KEY,
    passenger_name VARCHAR2(50),
    age NUMBER,
    gender VARCHAR2(10)
);

CREATE TABLE bookings (
    booking_id NUMBER PRIMARY KEY,
    train_id NUMBER,
    passenger_id NUMBER,
    travel_date DATE,
    seat_no NUMBER,
    status VARCHAR2(20),
    FOREIGN KEY (train_id) REFERENCES trains(train_id),
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id)
);