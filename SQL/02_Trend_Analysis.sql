-- Pizza Sales Analytics
-- Trend Analysis


-- 1. Daily Trend for Total Orders
SELECT 
    DATENAME(WEEKDAY, order_date) AS Order_Day,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DATENAME(WEEKDAY, order_date);


-- 2. Monthly Trend for Total Orders
SELECT 
    DATENAME(MONTH, order_date) AS Order_Month,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY Total_Orders DESC;
