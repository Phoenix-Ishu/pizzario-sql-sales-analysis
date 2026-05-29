-- Identify the most common pizza size ordered.
SELECT 
    pizzas.size, COUNT(orders_details.order_details_id) AS count
FROM
    pizzas
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY size
ORDER BY count DESC
LIMIT 1;