CREATE PROCEDURE add_product(
p_nme VARCHAR,
P_SKU char(8),
p_price NUMERIC,
p_qty INT,
p_category TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
	insert into products(name,sku_code,price,stock_quantity,category)
	values(p_name,p_sku,p_price,p_qty,p_category);

	RAISE NOTICE 'Product added successfully';
end;
$$;

