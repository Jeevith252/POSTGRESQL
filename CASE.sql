SELECT *FROM products;

SELECT name ,price, 
	CASE 
		WHEN (price > 1000) THEN 'EXPENSIVE'
		WHEN price BETWEEN 500 and 1000 THEN 'MODERATE'
		ELSE 'CHEAP'
	END AS price_tag
FROM products;



ALTER TABLE products
ADD COLUMN price_tag TEXT;

UPDATE products
SET price_tag = 
CASE 
		WHEN (price > 1000) THEN 'EXPENSIVE'
		WHEN price BETWEEN 500 and 1000 THEN 'MODERATE'
		ELSE 'CHEAP'
	END ;


ALTER TABLE products
ADD COLUMN in_stock text;

UPDATE products
SET in_stock = 
CASE
WHEN is_available = true THEN 'IN_STOCK'
ELSE 'OUT OF STOCK'
END;