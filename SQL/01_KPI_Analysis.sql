-- Pizza Sales Analytics
-- KPI Analysis

-- 1. Total Revenue
SELECT 
    ROUND(SUM(total_price), 2) AS Total_Revenue
FROM pizza_sales;


-- 2. Average Order Value
SELECT 
    ROUND(
        SUM(total_price) / COUNT(DISTINCT order_id),
        2
    ) AS Average_Order_Value
FROM pizza_sales;


-- 3. Total Pizzas Sold
SELECT 
    SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales;


-- 4. Total Orders
SELECT 
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales;


-- 5. Average Pizzas Per Order
SELECT 
    ROUND(
        CAST(SUM(quantity) AS DECIMAL(10,2)) /
        CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)),
        2
    ) AS Average_Pizzas_Per_Order
FROM pizza_sales;
