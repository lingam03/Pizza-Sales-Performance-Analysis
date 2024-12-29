SELECT DATE_FORMAT(order_date,'%W') as order_day, 
	COUNT(DISTINCT order_id) as Total_Orders
from pizza_sales_db
group by DATE_FORMAT(order_date, '%W');


ALTER TABLE pizza_sales_db
ADD COLUMN updated_order_date DATE;

UPDATE pizza_sales_db
SET updated_order_date = STR_TO_DATE(order_date, '%d-%m-%Y');

ALTER TABLE pizza_sales_db
DROP COLUMN order_date;

ALTER TABLE pizza_sales_db
CHANGE COLUMN updated_order_date order_date DATE;
