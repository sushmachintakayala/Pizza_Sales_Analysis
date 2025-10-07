SELECT DATE(order_date) AS order_day,
  COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATE(order_date);
select * from pizza_sales;
select pizza_category, sum(total_price) as total_sales,sum(total_price)*100/(select sum(total_price) from pizza_sales) PCT
from pizza_sales
group by pizza_category;
select pizza_size, sum(total_price) as total_sales,sum(total_price)*100/(select sum(total_price) from pizza_sales) PCT
from pizza_sales
group by pizza_size;
select pizza_category,sum(quantity) total_pizzas_sold from pizza_sales
group by pizza_category
order by total_pizzas_sold desc;
select pizza_name,sum(quantity) total_pizzas_sold from pizza_sales
group by pizza_name
order by total_pizzas_sold desc
limit 5;
select pizza_name,sum(quantity) total_pizzas_sold from pizza_sales
group by pizza_name
order by total_pizzas_sold asc
limit 5;