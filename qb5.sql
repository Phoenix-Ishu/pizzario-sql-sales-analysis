-- List the top 5 most ordered pizza types along with their quantities.
SELECT 
    pizza_types.name AS name,
    COUNT(orders_details.quantity) AS count
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    orders_details ON orders_details.pizza_id = pizzas.pizza_id
GROUP BY name
ORDER BY count DESC
LIMIT 5; 