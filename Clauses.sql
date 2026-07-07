
Select * from products

--1)Show the names and prices of all products
Select name,price from products;


--2)Show all the products where the category is electronics
SELECT name from products
WHERE category = 'Electronics';


--3)Group Products by category.Show each category once
SELECT category from products GROUP BY category;


--4)show category having more than one product
select category, count(*) from products
GROUP BY category 
HAVING count(*)>1;


--5)Show all products sorted by the prices in acsending order
Select * from products
order by price ;


--6)Show only first 3 rows of the table
Select * from products limit 3;


--7)Show name as item_name and price as item_price 
select name as item_name , price as item_price from products;

--8)View all the distinct category
select distinct category from products;