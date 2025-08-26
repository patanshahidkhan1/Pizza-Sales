-- 8.Join relevant tables to find the category-wise
--  distribution of pizzas.

select category ,count(name) as Name from pizza_types
group by category;