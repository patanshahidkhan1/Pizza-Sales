-- 7.Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time) AS hour, COUNT(order_id) AS Order_Count
FROM
    orders
GROUP BY HOUR(order_time);