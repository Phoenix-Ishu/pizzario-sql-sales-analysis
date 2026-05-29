-- Calculate the total revenue generated from pizza sales.
SELECT 
    round(sum(orders_details.quantity * pizzas.price))
FROM
    orders_details
        JOIN
    pizzas ON orders_details.pizza_id = pizzas.pizza_id; 
    