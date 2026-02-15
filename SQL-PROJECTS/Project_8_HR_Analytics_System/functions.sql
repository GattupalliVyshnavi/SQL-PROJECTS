CREATE OR REPLACE FUNCTION calculate_bonus(salary NUMBER)
RETURN NUMBER
IS
BEGIN
    RETURN salary * 0.10; -- 10% bonus
END;
/

-- Test:

SELECT emp_name, salary, calculate_bonus(salary) AS bonus
FROM employees;