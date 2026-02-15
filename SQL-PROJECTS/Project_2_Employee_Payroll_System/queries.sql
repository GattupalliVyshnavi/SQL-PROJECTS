-- View all employees

SELECT * FROM employees;

-- Show employee with department name

SELECT e.emp_name, d.dept_name, e.job
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- Calculate total salary of each employee

SELECT e.emp_name,
       (s.basic_salary + s.bonus - s.deductions) AS total_salary
FROM employees e
JOIN salary s ON e.emp_id = s.emp_id;

-- Department-wise total salary

SELECT d.dept_name,
       SUM(s.basic_salary + s.bonus - s.deductions) AS dept_total_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN salary s ON e.emp_id = s.emp_id
GROUP BY d.dept_name;

-- Employees whose salary > 40000

SELECT e.emp_name,
       (s.basic_salary + s.bonus - s.deductions) AS total_salary
FROM employees e
JOIN salary s ON e.emp_id = s.emp_id
WHERE (s.basic_salary + s.bonus - s.deductions) > 40000;

-- Use CASE (bonus category)

SELECT e.emp_name,
       s.basic_salary,
       CASE
           WHEN s.basic_salary >= 40000 THEN 'High Salary'
           WHEN s.basic_salary >= 30000 THEN 'Medium Salary'
           ELSE 'Low Salary'
       END AS salary_category
FROM employees e
JOIN salary s ON e.emp_id = s.emp_id;

-- Subquery: employees in IT department

SELECT emp_name
FROM employees
WHERE dept_id = (
    SELECT dept_id
    FROM departments
    WHERE dept_name = 'IT'
);