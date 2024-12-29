SELECT 
    DATE_FORMAT(order_date, '%M') AS Month_name,
    COUNT(DISTINCT order_id) AS Total_orders
FROM 
    pizza_sales_db
GROUP BY 
    DATE_FORMAT(order_date, '%M')
order by Total_orders Desc;