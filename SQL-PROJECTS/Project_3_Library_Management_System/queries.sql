-- Show all books

SELECT * FROM books;

-- Show issued books with member name

SELECT b.title, m.member_name, i.issue_date
FROM books b
JOIN issue_records i ON b.book_id = i.book_id
JOIN members m ON i.member_id = m.member_id;

-- Find books not yet returned

SELECT b.title, m.member_name
FROM books b
JOIN issue_records i ON b.book_id = i.book_id
JOIN members m ON i.member_id = m.member_id
WHERE i.return_date IS NULL;

-- Calculate number of days book was issued

SELECT b.title,
       m.member_name,
       (i.return_date - i.issue_date) AS days_issued
FROM books b
JOIN issue_records i ON b.book_id = i.book_id
JOIN members m ON i.member_id = m.member_id
WHERE i.return_date IS NOT NULL;

-- Members who joined after 2023

SELECT *
FROM members
WHERE join_date > TO_DATE('2023-01-01','YYYY-MM-DD');

-- Count how many books each member borrowed

SELECT m.member_name, COUNT(i.book_id) AS total_books
FROM members m
JOIN issue_records i ON m.member_id = i.member_id
GROUP BY m.member_name;

-- Subquery: books borrowed by Ravi

SELECT title
FROM books
WHERE book_id IN (
    SELECT book_id
    FROM issue_records
    WHERE member_id = (
        SELECT member_id
        FROM members
        WHERE member_name = 'Ravi'
    )
);