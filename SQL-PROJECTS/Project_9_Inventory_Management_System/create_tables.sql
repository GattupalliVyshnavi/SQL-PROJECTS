CREATE TABLE suppliers (
    supplier_id NUMBER PRIMARY KEY,
    supplier_name VARCHAR2(50),
    city VARCHAR2(50)
);

CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(50),
    supplier_id NUMBER,
    price NUMBER,
    stock NUMBER,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE purchases (
    purchase_id NUMBER PRIMARY KEY,
    product_id NUMBER,
    quantity NUMBER,
    purchase_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE sales (
    sale_id NUMBER PRIMARY KEY,
    product_id NUMBER,
    quantity NUMBER,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);