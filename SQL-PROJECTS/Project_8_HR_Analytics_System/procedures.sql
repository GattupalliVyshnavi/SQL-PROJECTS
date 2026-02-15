CREATE OR REPLACE PROCEDURE increase_salary (
    empid IN NUMBER,
    percent IN NUMBER
)
AS
BEGIN
    UPDATE employees
    SET salary = salary + (salary * percent / 100)
    WHERE emp_id = empid;

    COMMIT;
END;
/

-- Call:

EXEC increase_salary(101, 10);