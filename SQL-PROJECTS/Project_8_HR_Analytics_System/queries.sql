-- Show all employees
SELECT * FROM employees;

-- Employees with department
SELECT e.emp_name, d.dept_name, e.salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

-- Average salary by department
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Attrition count
SELECT status, COUNT(*) AS total
FROM employees
GROUP BY status;

-- Rank employees by salary
SELECT emp_name, salary,
       RANK() OVER (ORDER BY salary DESC) AS rank_no
FROM employees;

-- Employees with salary above average
SELECT emp_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);