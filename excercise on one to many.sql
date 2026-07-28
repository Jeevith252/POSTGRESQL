CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category TEXT,
    price NUMERIC(10,2),
    stock_quantity INT,
    is_available BOOLEAN,
    added_on DATE
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    order_date DATE,
    customer_name VARCHAR(50),
    payment_method VARCHAR(50),
    CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
        ON DELETE CASCADE
);

select * from products;

select * from orders;

--Q1. Show each order along with the product name and price.
SELECT p.product_name , p.price ,o.quantity ,o.customer_name,o.payment_method  
FROM products p
JOIN orders o
ON p.product_id = o.product_id;

--Q2. Show all products even if they were never ordered.

SELECT p.product_name , p.price ,o.quantity ,o.customer_name
from products p 
left join orders o 
on p.product_id = o.product_id;

--Q3.Show orders for only ‘Electronics’ category.

SELECT p.product_name , p.price ,o.quantity ,o.customer_name,o.payment_method  
FROM products p
JOIN orders o
on p.product_id = o.product_id
where category = 'Electronics';

--Q4.List all orders sorted by product price (high to low).

SELECT p.product_name , p.price ,o.order_id ,o.customer_name,o.payment_method  
FROM products p
JOIN orders o
on p.product_id = o.product_id
order by price DESC;

--Q5.Show number of orders placed for each product.

SELECT
    p.product_name,
    count(o.quantity) AS total
FROM products p
LEFT JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_name;

--Q6.Show total revenue earned per product.

SELECT
    p.product_name,
    sum(o.quantity * p.price) AS total
FROM products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total DESC;


--Q7.Show products where total order revenue > ₹2000.

SELECT
    p.product_name,
    sum(o.quantity * p.price) AS total
FROM products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_name
having sum(o.quantity * p.price) > 2000;

--Q8.Show unique customers who ordered ‘Fitness’ products.

SELECT distinct o.customer_name from products p
join orders o
on p.product_id = o.product_id
where category = 'Fitness';
