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
('Emma', 'Smith', 21, 'B', 'Mechanical Engineering', 'emma.smith@example.com', '2003-02-10', 'A-', 'UK'),
('Liam', 'Johnson', 23, 'A+', 'Business Administration', 'liam.johnson@example.com', '2001-09-25', 'B+', 'Canada'),
('Olivia', 'Brown', 20, 'A', 'Psychology', 'olivia.brown@example.com', '2004-07-18', 'AB-', 'Australia'),
('Noah', 'Jones', 24, 'B-', 'Electrical Engineering', 'noah.jones@example.com', '2000-12-05', 'O-', 'Germany'),
('Ava', 'Garcia', 22, 'A', 'Medicine', 'ava.garcia@example.com', '2002-03-22', 'B+', 'France'),
('William', 'Martinez', 25, 'B+', 'Law', 'william.martinez@example.com', '1999-11-30', 'A+', 'Spain'),
('Sophia', 'Lopez', 19, 'A-', 'Fine Arts', 'sophia.lopez@example.com', '2005-06-08', 'O+', 'Italy'),
('James', 'Gonzalez', 21, 'C', 'Software Engineering', 'james.gonzalez@example.com', '2003-08-15', 'AB+', 'Netherlands'),
('Isabella', 'Harris', 23, 'A+', 'Finance', 'isabella.harris@example.com', '2001-10-03', 'A-', 'Sweden'),
('Mason', 'Clark', 20, 'B', 'Journalism', 'mason.clark@example.com', '2004-01-12', 'O-', 'Denmark'),
('Mia', 'Lewis', 22, 'B-', 'Political Science', 'mia.lewis@example.com', '2002-04-17', 'B-', 'Norway'),
('Benjamin', 'Walker', 24, 'A', 'Physics', 'benjamin.walker@example.com', '2000-07-23', 'AB-', 'Finland'),
('Charlotte', 'Allen', 19, 'A+', 'Mathematics', 'charlotte.allen@example.com', '2005-09-29', 'A+', 'Belgium'),
('Elijah', 'Young', 21, 'B+', 'Civil Engineering', 'elijah.young@example.com', '2003-11-05', 'O+', 'Switzerland'),
('Amelia', 'King', 23, 'C-', 'Architecture', 'amelia.king@example.com', '2001-02-21', 'B+', 'Austria'),
('Lucas', 'Wright', 22, 'A-', 'History', 'lucas.wright@example.com', '2002-06-14', 'A-', 'Portugal'),
('Harper', 'Scott', 20, 'B', 'Environmental Science', 'harper.scott@example.com', '2004-03-08', 'AB+', 'Ireland'),
('Henry', 'Green', 25, 'B-', 'Astronomy', 'henry.green@example.com', '1999-12-20', 'O-', 'New Zealand'),
('Evelyn', 'Adams', 19, 'A', 'Nursing', 'evelyn.adams@example.com', '2005-08-01', 'B-', 'Japan');

SELECT * FROM students ORDER BY age ASC;