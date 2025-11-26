USE cs_bck81809;

SELECT product.product_id, product_name, brand_name, list_price
FROM product 
JOIN brand 
ON product.brand_id = brand.brand_id
JOIN product_details 
ON product_details.product_id = product.product_id;

SELECT *
FROM product_details
WHERE list_price > 500
ORDER BY list_price DESC;
