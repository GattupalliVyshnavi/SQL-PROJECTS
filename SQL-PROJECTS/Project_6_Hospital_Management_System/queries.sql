-- show all appointments with patient and doctor

SELECT a.appointment_id,
       p.patient_name,
       d.doctor_name,
       a.appointment_date
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id;

-- Show unpaid bills

SELECT p.patient_name, b.amount
FROM bills b
JOIN appointments a ON b.appointment_id = a.appointment_id
JOIN patients p ON a.patient_id = p.patient_id
WHERE b.payment_status = 'Unpaid';

-- Doctor-wise number of appointments

SELECT d.doctor_name, COUNT(a.appointment_id) AS total_appointments
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name;

-- CASE: bill category

SELECT b.bill_id,
       p.patient_name,
       b.amount,
       CASE
           WHEN b.amount >= 2000 THEN 'High'
           WHEN b.amount >= 1500 THEN 'Medium'
           ELSE 'Low'
       END AS bill_category
FROM bills b
JOIN appointments a ON b.appointment_id = a.appointment_id
JOIN patients p ON a.patient_id = p.patient_id;