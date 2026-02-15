CREATE TABLE patients (
    patient_id NUMBER PRIMARY KEY,
    patient_name VARCHAR2(50),
    age NUMBER,
    gender VARCHAR2(10)
);

CREATE TABLE doctors (
    doctor_id NUMBER PRIMARY KEY,
    doctor_name VARCHAR2(50),
    specialization VARCHAR2(50)
);

CREATE TABLE appointments (
    appointment_id NUMBER PRIMARY KEY,
    patient_id NUMBER,
    doctor_id NUMBER,
    appointment_date DATE,
    CONSTRAINT fk_patient FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    CONSTRAINT fk_doctor FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

CREATE TABLE bills (
    bill_id NUMBER PRIMARY KEY,
    appointment_id NUMBER,
    amount NUMBER,
    payment_status VARCHAR2(20),
    CONSTRAINT fk_appointment FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);