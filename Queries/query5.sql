USE cs_bck81809;

SELECT product.product_id, product.product_name, SUM(order_item.quantity) AS total_units_sold, SUM(order_item.quantity * product_details.list_price) AS total_revenue
FROM product 
JOIN product_details
ON product.product_id = product_details.product_id
JOIN order_item
ON product.product_id = order_item.product_id
WHERE order_item.quantity > 0
GROUP BY product.product_id, product.product_name
ORDER BY total_revenue DESC;
