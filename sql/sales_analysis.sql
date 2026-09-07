-- SALES & BUSINESS PERFORMANCE ANALYSIS
-- Database: sales_analysis
-- Table: sales
-- Tool: MySQL

-- 1. Total Sales and Total Profit
SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales;


-- 2. Overall Profit Margin
SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin
FROM sales;


-- 3. Sales and Profit by Category
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;


-- 4. Sales and Profit by Region
SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;


-- 5. Monthly Sales Trend
SELECT
    MONTH(Order_Date) AS Month_Number,
    MONTHNAME(Order_Date) AS Month_Name,
    SUM(Sales) AS Total_Sales
FROM sales
GROUP BY MONTH(Order_Date), MONTHNAME(Order_Date)
ORDER BY Month_Number;


-- 6. Sales by Sub-Category
SELECT
    Sub_Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;


-- 7. Top 10 Customers by Sales
SELECT
    Customer_ID,
    Customer_Name,
    SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;


-- 8. Top 10 Customers by Profit
SELECT
    Customer_ID,
    Customer_Name,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Profit DESC
LIMIT 10;


-- 9. Top 10 Products by Sales
SELECT
    Product_ID,
    Product_Name,
    SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Product_ID, Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;


-- 10. Top 10 Products by Profit
SELECT
    Product_ID,
    Product_Name,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Product_ID, Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;


-- 11. Average Order Value
SELECT
    SUM(Sales) / COUNT(DISTINCT Order_ID) AS Average_Order_Value
FROM sales;


-- 12. Total Orders and Total Customers
SELECT
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM sales;


-- 13. Profit Margin by Category
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin
FROM sales
GROUP BY Category
ORDER BY Profit_Margin DESC;


-- 14. Profit Margin by Region
SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin
FROM sales
GROUP BY Region
ORDER BY Profit_Margin DESC;


-- 15. Sales by State
SELECT
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY State
ORDER BY Total_Sales DESC;


-- 16. Top 10 Cities by Sales
SELECT
    City,
    SUM(Sales) AS Total_Sales
FROM sales
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;


-- 17. Discount Impact on Sales and Profit
SELECT
    Discount,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin
FROM sales
GROUP BY Discount
ORDER BY Discount;


-- 18. Loss-Making Products
SELECT
    Product_ID,
    Product_Name,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Product_ID, Product_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Profit;


-- 19. Sales and Profit by Category and Region
SELECT
    Category,
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Category, Region
ORDER BY Total_Sales DESC;


-- 20. Product Performance
SELECT
    Product_ID,
    Product_Name,
    Category,
    Sub_Category,
    SUM(Sales) AS Total_Sales,
     SUM(Profit) AS Total_Profit,
    (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin
FROM sales
GROUP BY Product_ID, Product_Name, Category, Sub_Category
ORDER BY Total_Sales DESC;
