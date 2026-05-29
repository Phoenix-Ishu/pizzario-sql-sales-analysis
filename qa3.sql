-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
select name, category, revenue, rank() over (partition by category ORDER BY revenue DESC) as ranking from (SELECT 
    pizza_types.category AS category, pizza_types.name as name,
    SUM(orders_details.quantity * pizzas.price) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY name, category) as a;
