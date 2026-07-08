CREATE TABLE students(
students_id serial primary key,
name varchar(100),
age int
);


INSERT INTO students(name ,age)
values('Jeevith' ,23),
('Ayush' , 22);

SELECT * FROM students;


--1)ADD COLUMN
ALTER TABLE students
ADD COLUMN email VARCHAR(100) DEFAULT 'NOT PROVIDED';


--2)DROP COLUMN
ALTER TABLE students
DROP COLUMN email;

--3)Rename the column
ALTER TABLE students
RENAME COLUMN name TO stud_name;

--4)Change the datatype
ALTER TABLE studnets
ALTER COLUMN age TYPE BIGINT;

--5)SET DEFAULT VALUE
ALTER TABLE students
ALTER COLUMN age SET DEFAULT 18;



--6)Remove default value
ALTER TABLE students
ALTER COLUMN age DROP DEFAULT;

--7)Add constraint
ALTER TABLE students
ADD CONSTRAINT age_check CHECK (age>0);	

--8)Droping Constraint
ALTER TABLE students
DROP CONSTRAINT age_check;

--9)RENAME TABLE
ALTER TABLE students
RENAME TO school_std;