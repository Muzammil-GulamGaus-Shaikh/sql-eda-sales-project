/*
=============================================================
Sales Date Range & Customer Age Analysis
=============================================================
Objective:
    - Identify the first and last order dates
    - Determine how many years of sales data are available
    - Identify the youngest and oldest customers in the dataset

Tables Used:
    - gold.fact_sales
    - gold.dim_customers
*/

-------------------------------------------------------------
-- Find the first and last order dates
-- Calculate the total number of years of sales data available
-------------------------------------------------------------
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(year, MIN(order_date), MAX(order_date)) AS order_range_years
FROM gold.fact_sales;


-------------------------------------------------------------
-- Find the oldest and youngest customers
-- Calculate approximate age based on birthdate
-------------------------------------------------------------
SELECT 
    MIN(birthdate) AS oldest_birthdate,
    DATEDIFF(year, MIN(birthdate), GETDATE()) AS approx_oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    DATEDIFF(year, MAX(birthdate), GETDATE()) AS approx_youngest_age
FROM gold.dim_customers;
