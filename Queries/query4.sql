USE cs_bck81809;

SELECT stores.stores_id AS storeID, stores.store_name, COUNT(DISTINCT stock.product_id) AS number_of_products_in_stock
FROM stores
JOIN stock 
ON stores.stores_id = stock.store_id
GROUP BY stores.stores_id, stores.store_name
HAVING COUNT(DISTINCT stock.product_id) > 20
ORDER BY number_of_products_in_stock DESC;
