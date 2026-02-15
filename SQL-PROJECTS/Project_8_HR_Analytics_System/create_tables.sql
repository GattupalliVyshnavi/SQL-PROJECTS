CREATE TABLE departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50)
);

CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    dept_id NUMBER,
    salary NUMBER,
    hire_date DATE,
    status VARCHAR2(20),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE attendance (
    att_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    work_date DATE,
    status VARCHAR2(20),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);