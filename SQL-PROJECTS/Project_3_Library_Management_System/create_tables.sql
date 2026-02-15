CREATE TABLE books (
    book_id NUMBER PRIMARY KEY,
    title VARCHAR2(100),
    author VARCHAR2(50),
    price NUMBER,
    status VARCHAR2(20) CHECK (status IN ('Available', 'Issued'))
);

CREATE TABLE members (
    member_id NUMBER PRIMARY KEY,
    member_name VARCHAR2(50),
    join_date DATE
);

CREATE TABLE issue_records (
    issue_id NUMBER PRIMARY KEY,
    book_id NUMBER,
    member_id NUMBER,
    issue_date DATE,
    return_date DATE,
    CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES books(book_id),
    CONSTRAINT fk_member FOREIGN KEY (member_id) REFERENCES members(member_id)
);