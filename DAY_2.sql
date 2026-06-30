create table random ( 
ID serial PRIMARY KEY,
name varchar(100) not null,
email varchar(100) UNIQUE,
created_at DATE DEFAULT now(),
age int check (age > 18)

);

Insert into random(name, email, age)
values('Jeevith' , 'jeevithkampa252@gmail.com' , 21); 

select * from random;