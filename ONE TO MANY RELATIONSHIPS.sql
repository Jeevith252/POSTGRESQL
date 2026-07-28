select * from students;

SELECT * from marks;

CREATE TABLE students(
stud_id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL
);  


CREATE TABLE marks(
mark_id SERIAL PRIMARY  KEY,
stud_id INT,
SUBJECTS VARCHAR(25),
MARKS INT ,
foreign key (stud_id) references students(stud_id));

INSERT INTO students(name)
values('JEEVITH') , ('AYSUH') , ('NATASHA');

INSERT INTO marks (stuD_id, SUBJECTS , MARKS)
VALUES
(1, 'English', 85),
(1, 'Math', 89),
(1, 'Science', 92),

(2, 'English', 80),
(2, 'Math', 75),
(2, 'Science', 78),

(3, 'English', 72),
(3, 'Math', 70),
(3, 'Science', 74);

--SHOW EAACH STUDENT'S NAME ALONG WITH THIER SUBJECT MARKS

SELECT s.name ,m.SUBJECTS, m.marks FROM students s 
JOIN marks m
ON s.stud_id = m.stud_id;

--SHOW MARKS OF ONLY "NATASHA" IN ALL SUBJECTS

SELECT m.SUBJECTS , m.MARKS FROM marks m
JOIN students s
ON m.stud_id = s.stud_id
WHERE NAME = 'NATASHA';

--SHOW ONLY THOSE SUBJECTS WHERE MARKS ARE > 80

SELECT s.name , m.SUBJECTS , m.MARKS FROM marks m
JOIN students s
ON m.stud_id = s.stud_id
WHERE MARKS >80;

UPDATE MARKS
SET MARKS = 100
WHERE stud_id = 3 and SUBJECTS = 'Math';

--SORT ALL STUDNETS SUBJECT MARKS IN DESC ORDER OF MARKS

SELECT s.name , m.SUBJECTS , m.MARKS FROM marks m
JOIN students s
ON m.stud_id = s.stud_id
order by MARKS DESC;


