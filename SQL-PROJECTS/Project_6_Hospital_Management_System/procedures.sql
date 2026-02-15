CREATE OR REPLACE PROCEDURE add_appointment (
    p_appointment_id IN NUMBER,
    p_patient_id IN NUMBER,
    p_doctor_id IN NUMBER,
    p_date IN DATE
) AS
BEGIN
    INSERT INTO appointments
    VALUES (p_appointment_id, p_patient_id, p_doctor_id, p_date);

    COMMIT;
END;
/

-- Call procedure:

EXEC add_appointment(1003, 1, 102, SYSDATE);