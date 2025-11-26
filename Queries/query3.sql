USE cs_bck81809;

SELECT customer.customer_id, customer.first_name, customer.last_name, COUNT(orders.order_id) AS TotalOrders
FROM customer
JOIN orders
ON orders.customer_id = customer.customer_id
GROUP BY
customer.customer_id, customer.first_name, customer.last_name
HAVING COUNT(orders.order_id) >= 2
ORDER BY TotalOrders DESC;
