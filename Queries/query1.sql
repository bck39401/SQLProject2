USE cs_bck81809;

SELECT 
    product.product_id,                 -- Product ID
    product.product_name,               -- Product name
    stock.quantity,                     -- Quantity currently in stock
    MAX(orders.order_date) AS last_order_date  -- Most recent date this product was ordered
FROM stock                              -- Stock table: which store has which product
JOIN product
    ON stock.product_id = product.product_id   -- Match stock rows to products
LEFT JOIN order_item
    ON product.product_id = order_item.product_id  -- Find order items for this product
LEFT JOIN orders
    ON order_item.orders_id = orders.order_id      -- Link order items to actual orders
WHERE 
    stock.store_id = 1                  -- Only look at store 1
    AND stock.quantity > 0              -- Only show products that are in stock
GROUP BY
    product.product_id,                 -- Group by product so it appears once
    product.product_name,               -- Required because it is selected
    stock.quantity                      -- Required because it is selected
ORDER BY 
    last_order_date DESC;                -- Highest stock first
