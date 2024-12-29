select pizza_category,round(sum(total_price),2) as Total_sales,
	round(sum(total_price) / 
	( select sum(total_price) from pizza_sales_db) * 100,2 ) as total_sales_percentage
from pizza_sales_db
group by pizza_category;

-- per month

select pizza_category,round(sum(total_price),2) as Total_sales,
	round(sum(total_price) / 
	( select sum(total_price) from pizza_sales_db  where month(order_date) =1) * 100,2 ) as total_sales_percentage
from pizza_sales_db
where month(order_date) =1
group by pizza_category;

-- per day

select pizza_category,round(sum(total_price),2) as Total_sales,
	round(sum(total_price) / 
	( select sum(total_price) from pizza_sales_db) * 100,2 ) as total_sales_percentage
from pizza_sales_db
where day(order_date) =1
group by pizza_category;

-- per quartly

select pizza_category,round(sum(total_price),2) as Total_sales,
	round(sum(total_price) / 
	( select sum(total_price) from pizza_sales_db where month(order_date) =1) * 100,2 ) as total_sales_percentage
from pizza_sales_db
where quarter(order_date) =1
group by pizza_category;
 
 -- weekly
 
select pizza_category,round(sum(total_price),2) as Total_sales,
	round(sum(total_price) / 
	( select sum(total_price) from pizza_sales_db) * 100,2 ) as total_sales_percentage
from pizza_sales_db
where weekday(order_date) =1
group by pizza_category;