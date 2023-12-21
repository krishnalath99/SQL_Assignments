CREATE DATABASE Student_Information_System;
USE Student_Information_System;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    date_of_birth DATE,
    email VARCHAR(50),
    phone_number CHAR(15)
);


INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
VALUES
	(1, 'Rahul', 'Gupta', '2000-03-15', 'rahul.gupta@email.com', '+91-9876543210'),
	(2, 'Priya', 'Sharma', '1999-07-20', 'priya.sharma@email.com', '+91-8765432109'),
	(3, 'Amit', 'Patel', '2001-05-10', 'amit.patel@email.com', '+91-7654321098'),
	(4, 'Sneha', 'Singh', '2002-02-25', 'sneha.singh@email.com', '+91-6543210987'),
	(5, 'Riya', 'Verma', '1998-12-08', 'riya.verma@email.com', '+91-5432109876'),
	(6, 'Kunal', 'Yadav', '2000-11-12', 'kunal.yadav@email.com', '+91-4321098765'),
	(7, 'Swati', 'Das', '1999-09-05', 'swati.das@email.com', '+91-3210987654'),
	(8, 'Raj', 'Kumar', '2001-08-18', 'raj.kumar@email.com', '+91-2109876543'),
	(9, 'Neha', 'Chopra', '1997-06-22', 'neha.chopra@email.com', '+91-1098765432'),
	(10, 'Vikram', 'Saxena', '2002-04-30', 'vikram.saxena@email.com', '+91-9876543210'),
	(11, 'Anjali', 'Bose', '1998-01-14', 'anjali.bose@email.com', '+91-8765432109'),
	(12, 'Aryan', 'Mishra', '2000-10-08', 'aryan.mishra@email.com', '+91-7654321098'),
	(13, 'Pooja', 'Gandhi', '1999-03-27', 'pooja.gandhi@email.com', '+91-6543210987'),
	(14, 'Amitabh', 'Rai', '2001-12-03', 'amitabh.rai@email.com', '+91-5432109876'),
	(15, 'Nandini', 'Shukla', '1998-09-16', 'nandini.shukla@email.com', '+91-4321098765'),
	(16, 'Rahila', 'Khan', '2000-07-21', 'rahila.khan@email.com', '+91-3210987654'),
	(17, 'Rohan', 'Mittal', '1999-05-14', 'rohan.mittal@email.com', '+91-2109876543'),
	(18, 'Ayesha', 'Singh', '2001-02-28', 'ayesha.singh@email.com', '+91-1098765432'),
	(19, 'Varun', 'Yadav', '1997-11-10', 'varun.yadav@email.com', '+91-9876543210'),
	(20, 'Simran', 'Rajput', '2002-08-05', 'simran.rajput@email.com', '+91-8765432109');


CREATE TABLE Teacher (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    email VARCHAR(50)
);


INSERT INTO Teacher (teacher_id, first_name, last_name, email)
VALUES
	(1, 'Dr. Anand', 'Sharma', 'anand.sharma@email.com'),
	(2, 'Prof. Deepa', 'Patil', 'deepa.patil@email.com'),
	(3, 'Mrs. Priya', 'Singh', 'priya.singh@email.com'),
	(4, 'Mr. Karthik', 'Rao', 'karthik.rao@email.com'),
	(5, 'Dr. Nisha', 'Verma', 'nisha.verma@email.com'),
	(6, 'Prof. Amit', 'Khanna', 'amit.khanna@email.com'),
	(7, 'Mrs. Shweta', 'Kumar', 'shweta.kumar@email.com');


CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    credits INT,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id) ON DELETE CASCADE
);


INSERT INTO Courses (course_id, course_name, credits, teacher_id)
VALUES
	(1, 'Advanced Programming Concepts', 4, 7),
	(2, 'Cybersecurity Fundamentals', 4, 1),
	(3, 'Database Management Systems', 2, 7),
	(4, 'Data Visualization Techniques', 2, 6),
	(5, 'Environmental Science Fundamentals', 3, 5),
	(6, 'History of Art and Culture', 3, 4),
	(7, 'Introduction to Computer Science', 3, 2),
	(8, 'Machine Learning Basics', 3, 6),
	(9, 'Mobile App Development Fundamentals', 2, 1),
	(10, 'Software Engineering Principles', 3, 1);


CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
	FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    course_id INT,
	FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE,
    enrollment_date DATE
);

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date)
VALUES
	(1, 1, 3, '2023-01-05'),
	(2, 2, 8, '2023-02-10'),
	(3, 3, 4, '2023-03-15'),
	(4, 4, 10, '2023-04-20'),
	(5, 5, 7, '2023-05-25'),
	(6, 6, 1, '2023-06-01'), 
	(7, 7, 2, '2023-07-07'), 
	(8, 8, 5, '2023-08-13'),
	(9, 9, 9, '2023-09-19'),
	(10, 10, 8, '2023-10-25'),
	(11, 11, 2, '2023-11-01'),
	(12, 12, 6, '2023-12-07'),
	(13, 13, 2, '2024-01-13'),
	(14, 14, 9, '2024-02-19'),
	(15, 15, 5, '2024-03-25'),
	(16, 16, 3, '2024-04-01'),
	(17, 17, 8, '2024-05-07'),
	(18, 16, 7, '2024-06-13'),
	(19, 17, 7, '2024-07-19'),
	(20, 18, 6, '2024-08-25'),
	(21, 16, 1, '2024-09-01'),
	(22, 17, 2, '2024-10-07'),
	(23, 19, 9, '2024-11-13'),
	(24, 16, 4, '2024-12-19'),
	(25, 19, 10, '2025-01-25'),
	(26, 18, 5, '2025-02-01'),
	(27, 20, 8, '2025-03-07'),
	(28, 1, 6, '2025-04-13'),
	(29, 2, 1, '2025-05-19'),
	(30, 3, 3, '2025-06-25'); 


CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    student_id INT,
	FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    amount DECIMAL(10, 2),
    payment_date DATE
);

INSERT INTO Payments (payment_id, student_id, amount, payment_date)
VALUES
	(1, 1, 500.00, '2023-01-10'),
	(2, 2, 750.50, '2023-02-15'),
	(3, 3, 400.25, '2023-03-20'),
	(4, 4, 600.75, '2023-04-25'),
	(5, 5, 900.00, '2023-05-30'),
	(6, 6, 350.50, '2023-06-05'),
	(7, 7, 800.25, '2023-07-10'),
	(8, 8, 550.75, '2023-08-15'),
	(9, 9, 700.00, '2023-09-20'),
	(10, 10, 450.50, '2023-10-25'),
	(11, 11, 550.75, '2023-11-30'),
	(12, 12, 650.00, '2023-12-05'),
	(13, 13, 300.25, '2024-01-10'),
	(14, 14, 850.50, '2024-02-15'),
	(15, 15, 500.75, '2024-03-20'),
	(16, 16, 750.00, '2024-04-25'),
	(17, 17, 400.50, '2024-05-30'),
	(18, 18, 600.25, '2024-06-05'),
	(19, 19, 950.75, '2024-07-10'),
	(20, 20, 700.00, '2024-08-15');


--BASIC QUERIES
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--1. Write an SQL query to insert a new student into the "Students" table with the following details:
--a. First Name: John
--b. Last Name: Doe
--c. Date of Birth: 1995-08-15
--d. Email: john.doe@example.com
--e. Phone Number: 1234567890
INSERT INTO Students VALUES(21, 'John', 'Doe', '1995-08-15', 'john.doe@example.com', '+91-1234567890');

--2. Write an SQL query to enroll a student in a course. Choose an existing student and course and insert a record into the "Enrollments" table with the enrollment date.
INSERT INTO Enrollments VALUES(31, 4, 7, '2023-12-2');

--3. Update the email address of a specific teacher in the "Teacher" table. Choose any teacher and modify their email address.
UPDATE Teacher SET email = 'verma.nisha@hotmail.com' WHERE teacher_id = 5;

--4. Write an SQL query to delete a specific enrollment record from the "Enrollments" table. Select an enrollment record based on student and course.
DELETE FROM Enrollments WHERE student_id = 4 AND course_id = 7;

--5. Update the "Courses" table to assign a specific teacher to a course. Choose any course and teacher from the respective tables.
UPDATE Courses SET teacher_id = 3 WHERE course_id = 5;

--6. Delete a specific student from the "Students" table and remove all their enrollment records from the "Enrollments" table. Be sure to maintain referential integrity.
DELETE FROM Students WHERE student_id = 4;

--7. Update the payment amount for a specific payment record in the "Payments" table. Choose any payment record and modify the payment amount.
UPDATE Payments SET amount = 675.25 WHERE payment_id = 15;



--JOINS
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--1. Write an SQL query to calculate the total payments made by a specific student. You will need to join the "Payments" table with the "Students" table based on the student's ID.
SELECT s.student_id, CONCAT(s.first_name, ' ', s.last_name) as Name, SUM(p.amount) as TotalPayments
FROM Students s JOIN Payments p
ON s.student_id = p.payment_id
GROUP BY s.student_id, s.first_name, s.last_name;

--2. Write an SQL query to retrieve a list of courses along with the count of students enrolled in each course. Use a JOIN operation between the "Courses" table and the "Enrollments" table
SELECT c.course_id, c.course_name, COUNT(e.student_id) as TotalEnrollments
FROM Courses c JOIN Enrollments e
ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;

--3. Write an SQL query to find the names of students who have not enrolled in any course. Use a LEFT JOIN between the "Students" table and the "Enrollments" table to identify students without enrollments.
SELECT s.student_id, CONCAT(s.first_name, ' ', s.last_name) as Name
FROM Students s LEFT JOIN Enrollments e
ON s.student_id = e.student_id
WHERE e.enrollment_id IS NULL;

--4. Write an SQL query to retrieve the first name, last name of students, and the names of the courses they are enrolled in. Use JOIN operations between the "Students" table and the "Enrollments" and "Courses" tables.
SELECT s.student_id, s.first_name, s.last_name, c.course_name
FROM Students s JOIN Enrollments e
ON s.student_id = e.student_id JOIN Courses c
ON e.course_id = c.course_id
ORDER BY s.student_id;

--5. Create a query to list the names of teachers and the courses they are assigned to. Join the "Teacher" table with the "Courses" table
SELECT t.teacher_id, CONCAT(t.first_name, ' ', t.last_name) as Name, c.course_name
FROM Teacher t JOIN Courses c
ON t.teacher_id = c.teacher_id
ORDER BY t.teacher_id;

--6. Retrieve a list of students and their enrollment dates for a specific course. You'll need to join the "Students" table with the "Enrollments" and "Courses" tables
SELECT s.student_id, CONCAT(s.first_name, ' ', s.last_name) as Name, c.course_name, e.enrollment_date
FROM Students s JOIN Enrollments e
ON s.student_id = e.student_id JOIN Courses c
ON e.course_id = c.course_id
ORDER BY s.student_id;

--7. Find the names of students who have not made any payments. Use a LEFT JOIN between the "Students" table and the "Payments" table and filter for students with NULL payment records.
SELECT s.student_id, CONCAT(s.first_name, ' ', s.last_name) as Name
FROM Students s LEFT JOIN Payments p
ON s.student_id = p.student_id
WHERE p.amount IS NULL;

--8. Write a query to identify courses that have no enrollments. You'll need to use a LEFT JOIN between the "Courses" table and the "Enrollments" table and filter for courses with NULL enrollment records.
SELECT c.course_id, c.course_name
FROM Courses c LEFT JOIN Enrollments e
ON c.course_id = e.course_id
WHERE e.enrollment_id IS NULL;

--9. Identify students who are enrolled in more than one course. Use a self-join on the "Enrollments" table to find students with multiple enrollment records.
SELECT DISTINCT e1.student_id
FROM Enrollments e1 JOIN Enrollments e2 
ON e1.student_id = e2.student_id
WHERE e1.course_id <> e2.course_id;

--10. Find teachers who are not assigned to any courses. Use a LEFT JOIN between the "Teacher" table and the "Courses" table and filter for teachers with NULL course assignments.
SELECT t.teacher_id, CONCAT(t.first_name, ' ', t.last_name) as Name
FROM Teacher t LEFT JOIN Courses c
ON t.teacher_id = c.teacher_id
WHERE c.course_id IS NULL;



--AGGREGATE FUNCTIONS AND SUBQUERIES
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--1. Write an SQL query to calculate the average number of students enrolled in each course. Use aggregate functions and subqueries to achieve this.
SELECT AVG(te.TotalEnrollments) as AverageNumberOfStudentsEnrolledInEachCourse
FROM (SELECT course_id, COUNT(DISTINCT student_id) AS TotalEnrollments
      FROM Enrollments
      GROUP BY course_id) as te;

--2. Identify the student(s) who made the highest payment. Use a subquery to find the maximum payment amount and then retrieve the student(s) associated with that amount.
SELECT s.student_id, CONCAT(s.first_name, ' ', s.last_name) as Name
FROM Students s
WHERE s.student_id = (SELECT student_id
		      FROM Payments
		      WHERE amount = (SELECT MAX(amount)
			      	      FROM Payments));

--3. Retrieve a list of courses with the highest number of enrollments. Use subqueries to find the course(s) with the maximum enrollment count.
SELECT course_id, course_name
FROM Courses
WHERE course_id IN (SELECT TOP 1 WITH TIES e.course_id
		    FROM Enrollments e
		    GROUP BY e.course_id
		    ORDER BY COUNT(e.student_id) DESC);

--4. Calculate the total payments made to courses taught by each teacher. Use subqueries to sum payments for each teacher's courses.


--5. Identify students who are enrolled in all available courses. Use subqueries to compare a student's enrollments with the total number of courses.
SELECT s.student_id, s.first_name, s.last_name
FROM Enrollments e, Students s
WHERE s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name
HAVING COUNT(e.course_id) = (SELECT COUNT(*)
			     FROM Courses);

--6. Retrieve the names of teachers who have not been assigned to any courses. Use subqueries to find teachers with no course assignments.
SELECT teacher_id, CONCAT(first_name, ' ', last_name) as teacher_name
FROM Teacher
WHERE teacher_id NOT IN (SELECT teacher_id 
			 FROM Courses);

--7. Calculate the average age of all students. Use subqueries to calculate the age of each student based on their date of birth.
SELECT AVG(a.age) as AverageAgeOfAllStudents
FROM (SELECT DATEDIFF(YEAR, date_of_birth, GETDATE()) as age
      FROM Students) as a;

--8. Identify courses with no enrollments. Use subqueries to find courses without enrollment records.
SELECT course_id, course_name
FROM Courses
WHERE course_id NOT IN (SELECT course_id
			FROM Enrollments);

--9. Calculate the total payments made by each student for each course they are enrolled in. Use subqueries and aggregate functions to sum payments.
SELECT s.student_id, CONCAT(s.first_name, ' ', s.last_name) as student_name, SUM(p.amount) as total_payments
FROM Payments p, Students s
WHERE s.student_id = p.student_id
GROUP BY s.student_id, s.first_name, s.last_name;

--10. Identify students who have made more than one payment. Use subqueries and aggregate functions to count payments per student and filter for those with counts greater than one.
SELECT student_id, CONCAT(first_name, ' ', last_name) as student_name
FROM Students
WHERE student_id IN (SELECT student_id
		     FROM Payments
		     GROUP BY student_id
		     HAVING COUNT(payment_id) > 1);

--11. . Write an SQL query to calculate the total payments made by each student. Join the "Students" table with the "Payments" table and use GROUP BY to calculate the sum of payments for each student.
SELECT s.student_id, CONCAT(s.first_name, ' ', s.last_name) as student_name, ISNULL(SUM(p.amount), 0) as total_payments
FROM Students s LEFT JOIN Payments p
ON s.student_id = p.student_id
GROUP BY s.student_id, s.first_name, s.last_name;

--12. Retrieve a list of course names along with the count of students enrolled in each course. Use JOIN operations between the "Courses" table and the "Enrollments" table and GROUP BY to count enrollments.
SELECT c.course_id, c.course_name, ISNULL(COUNT(e.student_id), 0) as TotalEnrollments
FROM Courses c LEFT JOIN Enrollments e
ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;

--13. Calculate the average payment amount made by students. Use JOIN operations between the "Students" table and the "Payments" table and GROUP BY to calculate the average.
SELECT s.student_id, CONCAT(s.first_name, ' ', s.last_name) as student_name, ISNULL(AVG(p.amount), 0) as AveragePaymentAmount
FROM Students s LEFT JOIN Payments p ON s.student_id = p.student_id
GROUP BY s.student_id, s.first_name, s.last_name;