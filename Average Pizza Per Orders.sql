select round(sum(quantity)/count(distinct(order_id)),2)  as Average_Pizza_per_orders
from pizza_sales_db;

-- this is used for MS SQL SERVER
select cast(cast(sum(quantity) as decimal(10,2)) / 
cast(count(distinct(order_id)) as decimal(10,2)) as decimal(10,2))
as Average_Pizza_per_orders
from pizza_sales_db;