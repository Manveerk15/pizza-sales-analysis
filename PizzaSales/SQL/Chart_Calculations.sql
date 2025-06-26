
SELECT * FROM pizza_sales;

--Daily Trend for Total Orders
SELECT DATENAME(WEEKDAY, order_date) OrderDay, COUNT(DISTINCT order_id) Orders
FROM pizza_sales
GROUP BY DATENAME(WEEKDAY, order_date)
Order By Orders DESC;


--Hourly Trend for Daily Orders
SELECT order_date ,COUNT(DISTINCT order_id) Orders, CAST(Datepart(hour, order_time) AS VARCHAR(2)) + ' - ' + CAST((Datepart(hour, order_time)+1) AS VARCHAR(2) ) AS OrderHour
FROM pizza_sales
GROUP BY order_date, Datepart(hour, order_time)
order by  order_date,Datepart(hour, order_time);


-- Monthly Trend of Total Orders
SELECT  DATENAME(MONTH, order_date) OrderMonth, COUNT(DISTINCT order_id) TotalOrders
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date) 
Order By TotalOrders DESC;


--Percentage of Sales by Pizza category
SELECT	pizza_category, 
				ROUND(SUM(total_price),2) SalesByCategory,
				ROUND(SUM(total_price) * 100/(SELECT SUM(total_price) FROM pizza_sales),2) PizzaCategorySalesPercent
		FROM	pizza_sales
		GROUP BY pizza_category
		ORDER BY PizzaCategorySalesPercent DESC;

		--Percentage of Sales by Pizza category by Month
			SELECT	pizza_category, 
					ROUND(SUM(total_price),2) SalesByCategory,
					ROUND(SUM(total_price) * 100/(SELECT SUM(total_price) FROM pizza_sales WHERE MONTH(order_date) = 1),2) PizzaCategorySalesPercent
			FROM	pizza_sales
			WHERE MONTH(order_date) = 1
			GROUP BY pizza_category
			ORDER BY PizzaCategorySalesPercent DESC;


-- Percentage of Sales by Pizza Size
SELECT	pizza_size, 
		ROUND(SUM(total_price),2) SalesBySize,
		ROUND(SUM(total_price) * 100/
		(SELECT SUM(total_price) FROM pizza_sales ),2) PizzaSizeSalesPercent
FROM	pizza_sales
GROUP BY pizza_size
ORDER BY PizzaSizeSalesPercent DESC;


   -- Percentage of Sales by Pizza Size by Quarter
		   SELECT	pizza_size, 
				ROUND(SUM(total_price),2) SalesBySize,
				ROUND(SUM(total_price) * 100/
				(SELECT SUM(total_price) FROM pizza_sales WHERE DATEPART(QUARTER, order_date) = 1 ),2) PizzaSizeSalesPercent
		FROM	pizza_sales
		WHERE DATEPART(QUARTER, order_date) = 1
		GROUP BY pizza_size
		ORDER BY PizzaSizeSalesPercent DESC;


--Total Pizzas sold by Pizza Category

SELECT pizza_category, COUNT(quantity) QuantitySold
FROM pizza_sales
GROUP BY pizza_category;

--TOP 5 Best Selling Pizzas by Revenue
SELECT TOP 5 pizza_name, ROUND(SUM(total_price),2) TotalRevenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY TotalRevenue DESC

--BOTTOM 5 Best Selling Pizzas by Revenue
SELECT TOP 5 pizza_name, ROUND(SUM(total_price),2) TotalRevenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY TotalRevenue 

-- Second Best Selling Pizza by Revenue
SELECT  pizza_name, ROUND(SUM(total_price),2) TotalRevenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY TotalRevenue DESC
OFFSET 1 ROWS fetch next 1 ROWS ONLY; 

--TOP 5 Best Selling Pizzas by Total Quantity
SELECT TOP 5  pizza_name, SUM(quantity) TotalQuantity
FROM pizza_sales
GROUP BY  pizza_name
ORDER BY TotalQuantity DESC


--BOTTOM 5 Best Selling Pizzas by Total Quantity
SELECT TOP 5 pizza_name, SUM(quantity) TotalQuantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY TotalQuantity 

--TOP 5 Best Selling Pizzas by Total Orders
SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) TotalOrders
FROM pizza_sales
GROUP BY  pizza_name
ORDER BY TotalOrders DESC

--BOTTOM 5 Best Selling Pizzas by Total Orders
SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) TotalOrders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY TotalOrders 