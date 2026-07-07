
--1)Display the name and price with cheapest price
Select name , price from products where price=(select min(price) from products);

--2)Display the average of the price where the category is from 'home and kitchen' and 'fitness'
SELECT avg(price) from products 
where category in('Home & Kitchen' , 'Fitness');

--3)Find the most expensive product
SELECT category ,max(price) as max_price from products 
group by category;


Select name,stock_quantity from products
where is_available = true and stock_quantity >50 and price != 299;

select distinct upper(category) from products
order by upper(category) DESC;

select * from products;