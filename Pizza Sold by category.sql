select pizza_category as "Pizza Category",
	sum(quantity) as "Total Pizza Sold"
from pizza_sales_db
group by pizza_category;