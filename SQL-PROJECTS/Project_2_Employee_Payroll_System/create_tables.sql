CREATE TABLE departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50)
);

CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    dept_id NUMBER,
    job VARCHAR2(30),
    hire_date DATE,
    CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE salary (
    emp_id NUMBER,
    basic_salary NUMBER,
    bonus NUMBER,
    deductions NUMBER,
    CONSTRAINT fk_emp FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);