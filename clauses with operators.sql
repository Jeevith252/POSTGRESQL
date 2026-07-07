 SELECT * FROM products;


--1)Comparision operator
 Select * From products
 where category = 'Home & Kitchen';

 Select * From products 
 where category != 'Home & Kitchen';


--2)Logical
 Select * From products
 where price > 1000 and category = 'Electronics';


--3)Between
 Select * From products
 where price between 400 and 1000;

 --4)SET
 SELECT * FROM products
 WHERE category in ('Electronics' , 'Accessories', 'Fitness');

 --5)Fitness
 SELECT * FROM products
 WHERE sku_code like 'W%';

  SELECT * FROM products
 WHERE sku_code like '%123%';

 Select * FROM products
 Where sku_code like '_B%';
 