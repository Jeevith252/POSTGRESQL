Select * from products;


--view for fitness category
CREATE VIEW fitness_item AS
Select * from products
where category = 'Fitness';


SELECT * from fitness_item;


--view for low stock items
create view LOW_STOCK AS
SELECT name , stock_quantity from products
where stock_quantity <50;

SELECT * FROM LOW_STOCK;