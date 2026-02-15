CREATE TABLE customers (
    cust_id NUMBER PRIMARY KEY,
    cust_name VARCHAR2(50),
    city VARCHAR2(30)
);

CREATE TABLE accounts (
    acc_no NUMBER PRIMARY KEY,
    cust_id NUMBER,
    balance NUMBER,
    CONSTRAINT fk_customer FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
);

CREATE TABLE transactions (
    txn_id NUMBER PRIMARY KEY,
    acc_no NUMBER,
    txn_type VARCHAR2(20), -- Deposit or Withdraw
    amount NUMBER,
    txn_date DATE,
    CONSTRAINT fk_account FOREIGN KEY (acc_no) REFERENCES accounts(acc_no)
);