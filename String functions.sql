--1) upper ,lower and length

SELECT Upper(name) from products;

SELECT Lower(name) from products;

SELECT name, length(name) from products;

--2)Substring

SELECT name ,SUBSTRING(sku_code,1,2) from products; 

--3)Left and Right

SELECT name , left(sku_code, 2) from products;

SELECT name , right(sku_code, 2) from products;

--4)Concate

SELECT concat(name,' ',category) from products;

SELECT concat_ws(':', name , category) from products;

--5)trim

SELECT TRIM(name) from products;

--6)Replace

Select replace(sku_code , left(sku_code , 2) , 'gg') from products;