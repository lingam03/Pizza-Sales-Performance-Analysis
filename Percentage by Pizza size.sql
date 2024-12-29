select pizza_size,
-- round(sum(total_price),2) as Total_sales,
	round(sum(total_price) / 
	( select sum(total_price) from pizza_sales_db) * 100,2 ) as total_sales_percentage
from pizza_sales_db
group by pizza_size
order by total_sales_percentage desc;