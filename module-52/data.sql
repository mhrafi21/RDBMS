CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL,
    grade CHAR(2),
    course VARCHAR(50) NOT NULL,
    dob DATE NOT NULL,
    blood_group CHAR(5) NOT NULL,
    country VARCHAR(50) NOT NULL
);

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('John', 'Doe', 22, 'A', 'Computer Science', 'john.doe@example.com', '2002-05-14', 'O+', 'USA'),
('Mahdi', 'Hasan', 21, 'B', 'Electrical Engineering', 'rafi@gmail.com', '2003-03-24', 'A+', 'Bangladesh')


SELECT * FROM students;

CREATE TABLE courses(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    description TEXT,
    credits INTEGER NOT NULL
);

INSERT INTO courses (course_name, description, credits) VALUES
('Computer Science', 'Introduction to Computer Science', 3),
('Electrical Engineering', 'Fundamentals of Electrical Engineering', 4);

SELECT * FROM courses;

SELECT * FROM courses
WHERE credits > 3;

CREATE TABLE enrollments(
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2023-01-15'),
(2, 2, '2023-01-16');

SELECT * FROM enrollments;