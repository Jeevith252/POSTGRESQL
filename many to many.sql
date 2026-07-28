
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100)
);

-- Sample Data
INSERT INTO students (student_id, student_name)
VALUES
(1, 'Akarsh'),
(2, 'Simran'),
(3, 'Rohan');

SELECT * FROM students;


CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);

-- Sample Data
INSERT INTO courses (course_id, course_name)
VALUES
(101, 'Python'),
(102, 'SQL'),
(103, 'Power BI');

SELECT * FROM courses;


--Junction Table

CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO student_courses (student_id, course_id)
VALUES
(1, 101),  -- Akarsh → Python
(1, 102),  -- Akarsh → SQL
(2, 101),  -- Simran → Python
(2, 103),  -- Simran → Power BI
(3, 102);  -- Rohan → SQL
SELECT * FROM student_courses;

--Now lets display
--1) Show the list of students with the courses they are enrolled in.
SELECT s.student_name ,c.course_name 
from student_courses sc 
join students s
on s.student_id = sc.student_id
join courses c
on c.course_id = sc.course_id;

--2)Find all the courses taken by the student named 'Simran'.

SELECT s.student_name ,c.course_name 
from student_courses sc 
join students s
on s.student_id = sc.student_id
join courses c
on c.course_id = sc.course_id
where student_name = 'Simran';
