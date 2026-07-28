--INNER JOIN

SELECT * FROM students s JOIN marks m ON s.stud_id = m.stud_id;

--LEFT JOIN
--FOR LEFT JOIN LETS ADD A NULL DATA

INSERT INTO students(name)
values('ABHAY');


SELECT * FROM students s LEFT JOIN marks m ON s.stud_id = m.stud_id;

--RIGHT JOIN

SELECT * FROM students s RIGHT JOIN marks m ON s.stud_id = m.stud_id;

--FULL JOIN

SELECT * FROM students s FULL JOIN marks m ON s.stud_id = m.stud_id;

--cross join
-- this will return the combinations of the marks with name

SELECT * FROM students s Cross JOIN marks m;