# Sales & Business Performance Analysis

## Project Overview

This project analyzes sales and business performance data to identify trends, top-performing products and customers, regional performance, and profitability.

The project demonstrates an end-to-end data analysis workflow using *Excel, MySQL, and Power BI*. 

## Tools Used

- *Excel* – Data cleaning and preparation
- *MySQL* – SQL-based data analysis
- *Power BI* – Interactive dashboard and visualization

## Dataset

The dataset contains 3,000 sales transactions and 500 unique customers.

### Key fields include:
- Order ID
- Order Date
- Customer
- Region
- State
- City
- Product
- Category
- Sub-Category
- Quantity
- Unit Price
- Discount
- Sales
- Profit

## Data Cleaning

The dataset was cleaned and validated in Excel.

Major cleaning activities included:
- Removed duplicate orders
- Handled missing customer information
- Filled missing location details
- Derived missing quantity values
- Derived missing discount values
- Removed unnecessary spaces using TRIM
- Standardized region values
- Validated calculated sales against the original sales values
- Verified important columns for missing values

## SQL Analysis

MySQL was used to analyze the cleaned dataset.

Key analysis included:
- Total sales and total profit
- Overall profit margin
- Sales and profit by category
- Sales and profit by region
- Monthly sales trends
- Sales by sub-category
- Top 10 customers
- Top 10 products
- Average order value
- Total orders and customers
- Profit margin by category and region
- Sales by state and city
- Discount impact on sales and profitability
- Loss-making products
- Category and region performance

## Power BI Dashboard

The Power BI dashboard provides an interactive view of business performance.

### Key KPIs

- *Total Sales:* 94.02M
- *Total Profit:* 15.00M
- *Total Orders:* 3,000
- *Total Customers:* 500
- *Profit Margin:* 15.96%

### Dashboard Visuals

- Monthly Sales Trend
- Top 10 Customers by Sales
- Sales by Region
- Sales by Category
- Sales by Sub-Category

The dashboard also includes a *Region slicer* for interactive filtering.

## Key Insights

### 1. Electronics dominates sales

Electronics generated approximately *68.89M* in sales, making it the largest contributor to overall revenue.

### 2. Business profitability

The overall profit margin is approximately *15.96%*, indicating that the business generates a healthy positive margin overall.

### 3. Customer performance

The analysis identifies the top customers contributing the highest sales, helping the business understand its most valuable customers.

### 4. Regional performance

Regional analysis helps identify stronger and weaker markets and supports better regional business decisions.

### 5. Monthly sales trends

Monthly analysis highlights fluctuations in sales throughout the year and helps identify periods requiring further investigation.

## Business Recommendations

- Continue supporting the Electronics category while exploring opportunities to grow weaker categories.
- Focus on retaining high-value customers.
- Investigate regions and sub-categories with lower profitability.
- Review the impact of discounts on profit margins.
- Monitor monthly sales trends to improve planning and forecasting.
