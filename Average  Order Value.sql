select round(sum(total_price) /count(distinct(order_id)),2) as Average_Order_value
from pizza_sales_db;