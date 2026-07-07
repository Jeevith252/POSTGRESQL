
--1)count
Select count(*) from products;

SELECT count(product_id) from products;


--2)sum
SELECT sum(price) from products;

SELECT sum(price) from products
WHERE category = 'Electronics';

--3) Average

SELECT AVG(price) from products;

SELECT ROUND(AVG(price),2) from products;

--4)maximum 
SELECT MAX(price) FROM products;

--5)MINIMUM
SELECT MIN(price) FROM products;