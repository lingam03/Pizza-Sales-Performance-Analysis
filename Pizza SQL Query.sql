SELECT count(pizza_id)
FROM pizza.pizza_sales;

select * from pizza_sales;

create Table pizza_sales_db like pizza_sales;

select * from pizza_sales_db;

Insert pizza_sales_db select * from pizza_sales;

select * 
from pizza_sales_db;

Select * , 
	row_number() over ( partition by pizza_id, order_id, pizza_name_id, 
    quantity, order_date, order_time, unit_price, total_price, 
	pizza_size,pizza_category,pizza_ingredients, pizza_name) as row_num
    from pizza_sales_db;
  
With duplicate_cte as (
	Select * , 
	row_number() over ( partition by pizza_id, order_id, pizza_name_id, 
    quantity, order_date, order_time, unit_price, total_price, 
	pizza_size,pizza_category,pizza_ingredients, pizza_name) as row_num
    from pizza_sales_db)
    select * 
    from duplicate_cte
    where row_num > 1;
    


