-- Pizza Sales Analytics
-- Product Performance Analysis


-- 1. Top 5 Pizzas by Revenue
SELECT TOP 5
    pizza_name,
    SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC;


-- 2. Bottom 5 Pizzas by Revenue
SELECT TOP 5
    pizza_name,
    SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC;


-- 3. Top 5 Pizzas by Quantity Sold
SELECT TOP 5
    pizza_name,
    SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC;


-- 4. Bottom 5 Pizzas by Quantity Sold
SELECT TOP 5
    pizza_name,
    SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity ASC;


-- 5. Top 5 Pizzas by Total Orders
SELECT TOP 5
    pizza_name,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC;


-- 6. Bottom 5 Pizzas by Total Orders
SELECT TOP 5
    pizza_name,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC;
