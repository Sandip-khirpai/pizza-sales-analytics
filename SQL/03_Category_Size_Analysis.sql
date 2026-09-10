-- Pizza Sales Analytics
-- Category & Size Analysis


-- 1. Percentage of Sales by Pizza Category
SELECT
    pizza_category,
    SUM(total_price) AS Total_Sales,
    SUM(total_price) * 100.0 /
        (SELECT SUM(total_price)
         FROM pizza_sales) AS Percentage_of_Sales
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Percentage_of_Sales DESC;


-- 2. Percentage of Sales by Pizza Size
SELECT
    pizza_size,
    SUM(total_price) AS Total_Sales,
    SUM(total_price) * 100.0 /
        (SELECT SUM(total_price)
         FROM pizza_sales) AS Percentage_of_Sales
FROM pizza_sales
GROUP BY pizza_size
ORDER BY Percentage_of_Sales DESC;


-- 3. Total Pizzas Sold by Pizza Category
SELECT
    pizza_category,
    SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Total_Pizzas_Sold DESC;
