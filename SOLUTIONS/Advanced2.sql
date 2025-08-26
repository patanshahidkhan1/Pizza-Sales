-- 12.Analyze the cumulative revenue generated over time.

select dates ,
sum(amount) over (order by dates) as cum_revenue
from
( select orders.order_date as dates ,
sum(orders_details.quantity * pizzas.price) as amount
from
orders_details join pizzas
on 
orders_details.pizza_id = pizzas.pizza_id
join orders
on orders_details.order_id = orders.order_id
group by dates ) as sales;


