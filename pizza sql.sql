select * from pizza_sales;
select sum(total_price) from pizza_sales;

select sum(total_price)/count(distinct order_id) as average_order_value from pizza_sales;

select sum(quantity) from pizza_sales;

select count(distinct order_id) from pizza_sales;

select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2)) from pizza_sales;


select datename(WEEKDAY,order_date),count(distinct order_id) from pizza_sales
group by datename(WEEKDAY,order_date);



select datepart(hour,order_time),count(distinct order_id) from pizza_sales
group by  datepart(hour,order_time)
Order by  datepart(hour,order_time) desc;


select pizza_category,cast(sum(total_price) as decimal(10,2)),
cast(sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as decimal(10,2)) 
from pizza_sales
group by pizza_category;



select pizza_size,
cast(sum(total_price) as decimal(10,2)),
cast(sum(total_price)*100/(select sum(total_price) from pizza_sales) as decimal(10,2))
from pizza_sales
group by pizza_size;



SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC






