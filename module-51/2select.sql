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

SELECT * FROM students ORDER BY age DESC;
SELECT * FROM students WHERE country = 'USA';
SELECT * FROM students WHERE age > 22;
SELECT * FROM students WHERE age < 20;
SELECT * FROM students WHERE age BETWEEN 20 AND 22;
SELECT * FROM students WHERE country = 'USA' AND age > 22;
SELECT * FROM students WHERE country = 'USA' OR country = 'UK';
SELECT * FROM students WHERE country = 'USA' AND age > 22 OR country = 'UK';


-- Exploring Scalar and Aggregate Functions

--Scaler functions

UPPER(), LOWER, CONCAT(),LENGTH -- used too much
UPPER(), LOWER, CONCAT(), LENGTH(), TRIM(), SUBSTRING(), REPLACE(), REVERSE(), ROUND(), CEIL(), FLOOR(), ABS(), MOD(), SQRT(), POWER(), RANDOM(), NOW(), CURRENT_DATE, CURRENT_TIME, CURRENT_TIMESTAMP


SELECT upper(first_name) from students WHERE country = 'USA';
SELECT lower(first_name) from students WHERE country = 'USA';
SELECT concat(first_name, ' ', last_name) from students WHERE country = 'USA';
SELECT length(first_name) from students WHERE country = 'USA';

SELECT trim('   Hello World   ');
SELECT substring('Hello World', 1, 5);  -- Hello
SELECT replace('Hello World', 'World', 'Universe');  -- Hello Universe
-- aggregate functions

COUNT(), SUM(), AVG(), MIN(), MAX()

SELECT COUNT(*) FROM students;
SELECT COUNT(DISTINCT country) FROM students;
SELECT SUM(age) FROM students;
SELECT AVG(age) FROM students;
SELECT MIN(age) FROM students;
SELECT MAX(age) FROM students;


-- Logical Negation NOT, Understanding NULL And The coalescing Operator in POSTGRESQL

SELECT * FROM students WHERE NOT country = 'USA';
SELECT * FROM students WHERE country <> 'USA';

SELECT * FROM students WHERE email IS  NULL;

SELECT  COALESCE(email, 'EMAIL IS NOT PROVIDED!') as "Email", blood_group FROM students 


-- Exploring the IN and NOT IN, lIKE, ILIKE Operators in POSTGRESQL


SELECT * FROM students WHERE age = 21 or age = 22 or age = 23 ;
SELECT * FROM students WHERE age IN(20,21,22); -- instead of OR operator use IN operator for shortcut 

SELECT * FROM students WHERE age NOT IN(20,21,22); -- instead of OR operator use IN operator for shortcut

SELECT * FROM students WHERE first_name LIKE 'J%';  -- % is wildcard character give all names starting with J; case sensitive
SELECT * FROM students WHERE first_name LIKE 'J___';  -- % is wildcard character give all names starting with J and 3 
SELECT * FROM students WHERE first_name ILIKE 'j%';  -- % is wildcard character give all names starting with J; case insensitive
SELECT * FROM students WHERE first_name ILIKE 'j___';  -- % is wildcard character give all names starting with J and 3

-- Pagination with Limit Offset and Data Deletion in PostgreSQL

SELECT * FROM students LIMIT 5; -- give first 5 records
SELECT * FROM students LIMIT 5 OFFSET 5 * 0;
SELECT * FROM students LIMIT 5 OFFSET 5 * 1; -- give next 5 records
SELECT * FROM students LIMIT 5 OFFSET 5 * 2; -- give next 5 records

SELECT * FROM students;
DELETE FROM students WHERE student_id = 1;

-- Updating Data in PostgreSQL
UPDATE students SET email = 'default@gmal.com' WHERE student_id = 20;



-- Handling Date and Date Functions in PostgreSQL

SHOW timezone;
SELECT NOW();
SELECT NOW()::DATE;
SELECT CURRENT_DATE;
SELECT to_char(now(), 'YYYY-MM-DD HH12:MI:SS');
SELECT to_char(now(), 'YYYY-MM-DD');

SELECT CURRENT_TIME;
SELECT CURRENT_TIMESTAMP;
SELECT EXTRACT(YEAR FROM dob) as year, 
EXTRACT(MONTH FROM dob) as month,
EXTRACT(DAY FROM dob) as day FROM students;