-- View all students

SELECT * FROM students;

-- students older than 20

SELECT * FROM students
WHERE age > 20;

-- Sort students by age

SELECT * FROM students
ORDER BY age;

-- JOIN Query
-- Show student name with course name

SELECT s.name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- Aggregate Functions
-- Total students

SELECT COUNT(*) AS total_students
FROM students;

-- Average age

SELECT AVG(age) AS avg_age
FROM students;

-- GROUP BY
-- Number of students in each course

SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;

-- Subquery
-- Students enrolled in SQL course

SELECT name
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM enrollments
    WHERE course_id = 101
);