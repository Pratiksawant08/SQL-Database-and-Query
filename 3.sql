-- Identify the highest-priced pizza.
SELECT pizza_types.name, pizzas.price
FROM pizzas
JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
WHERE pizzas.price = (SELECT MAX(price) FROM pizzas);
