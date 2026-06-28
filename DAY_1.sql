--CREATE
CREATE TABLE students(
	stud_id INT,
	name char(20),
	age int,
	grade char
);


--INSERT
INSERT INTO students (stud_id,name, age, grade)
VALUES (3,'Alex', 20, 'A');

--READ
select * from students

--DELETE
DELETE FROM students
WHERE name = 'Alex';

--UPDATE
Update students 
set name = 'AL'
where stud_id = 3;

--Data Types In SQL

--1) Numeric

CREATE TABLE numbers(
	id serial,
	age smallint,
	price DECIMAL(6,2),
	rating REAL 
);


INSERT INTO numbers (age, price, rating)
VALUES (21, 4800.12, 12.948);

select * from numbers;

--2)CHARACTER/STRINGS..

CREATE TABLE str(
code char(5),
email varchar(100),
bio text
);

INSERT INTO str
values ('23vb4','jeevithkampa@gmail.com','Hello , My name is Jeevith K and i am a data analyst');

select * from str;
