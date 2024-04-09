SELECT order_id, AVG(quantity) AS avg_quantity
FROM (
    SELECT order_id, quantity
    FROM order_details
    WHERE quantity > 10
) AS subquery
GROUP BY order_id;