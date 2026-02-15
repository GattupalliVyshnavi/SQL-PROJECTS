CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    age NUMBER,
    gender VARCHAR2(10)
);

CREATE TABLE courses (
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(50)
);

CREATE TABLE enrollments (
    enroll_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(course_id)
);