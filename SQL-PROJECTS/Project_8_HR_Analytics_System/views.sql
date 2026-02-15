CREATE VIEW employee_summary AS
SELECT e.emp_name, d.dept_name, e.salary, e.status
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

-- Use:

SELECT * FROM employee_summary;