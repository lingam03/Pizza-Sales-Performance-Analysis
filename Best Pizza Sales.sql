select pizza_name as Pizza_Name, 
cast(sum(total_price) as decimal(10,2)) as Total_Revenue, 
sum(quantity) as Total_Quantity, 
count(order_id) as Total_Sales
from pizza_sales_db
group by pizza_name
order by Total_Revenue DESC
limit 5;


-- Revenue
SELECT pizza_name AS Pizza_Name, 
   cast(SUM(total_price) AS DECIMAL (10, 2)) AS Total_Revenue
FROM 
    pizza_sales_db
GROUP BY 
    pizza_name
ORDER BY 
    Total_Revenue DESC
LIMIT 5;
-- Quantity 
SELECT pizza_name AS Pizza_Name, 
   cast(SUM(quantity) AS DECIMAL (10, 2)) AS Total_Quantity
FROM 
    pizza_sales_db
GROUP BY 
    pizza_name
ORDER BY 
    Total_Quantity DESC
LIMIT 5;

SELECT pizza_name AS Pizza_Name, 
   count(distinct order_id) AS Total_Sales
FROM 
    pizza_sales_db
GROUP BY 
    pizza_name
ORDER BY 
    Total_Sales DESC
LIMIT 5;




SELECT pizza_name AS Pizza_Name, 
   cast(SUM(total_price) AS DECIMAL (10, 2)) AS Total_Revenue
FROM 
    pizza_sales_db
GROUP BY 
    pizza_name
ORDER BY 
    Total_Revenue ASC
LIMIT 5;
-- Quantity 
SELECT pizza_name AS Pizza_Name, 
   cast(SUM(quantity) AS DECIMAL (10, 2)) AS Total_Quantity
FROM 
    pizza_sales_db
GROUP BY 
    pizza_name
ORDER BY 
    Total_Quantity ASC
LIMIT 5;

SELECT pizza_name AS Pizza_Name, 
   count(distinct order_id) AS Total_Sales
FROM 
    pizza_sales_db
GROUP BY 
    pizza_name
ORDER BY 
    Total_Sales asc
LIMIT 5;