select * from students;

SELECT * from STUD_PROFILE;

CREATE TABLE students(
stud_id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL
);

INSERT INTO students(name)
VALUES('Jeevith'),('Ayush'),('Natasha');

CREATE TABLE stud_profile(
stud_id INT PRIMARY KEY,
adress TEXT,
age INT ,
phone_number VARCHAR(15)
);

INSERT INTO stud_profile
VALUES(1 , 'PUTTUR' , 20 , '9875642318'),
(2, 'VAMANJOOR' , 20 , '9632587415'),
(3 , 'BANGLORE' , 21 , '95175346285');

ALTER TABLE stud_profile
ADD CONSTRAINT fk_stdu_id
FOREIGN KEY (stud_id)
REFERENCES students(stud_id);


-- WE HAVE CONNECTED TWO TABLES USING FOREIGN KEY AND PRIMARY KEY



SELECT s.stud_id, s.name ,sp.adress , sp.age  ,sp.phone_number FROM students s 
JOIN stud_profile sp
ON s.stud_id = sp.stud_id;
