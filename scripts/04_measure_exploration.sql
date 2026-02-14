/*
=============================================================
Measure Exploration
=============================================================
Purpose:
    Analyze key business measures from the sales data.
    This step focuses on calculating core performance
    indicators using fact and dimension tables.

    The objective is to generate high-level KPIs that
    summarize overall sales performance, customer activity,
    product coverage, and transaction volume.
*/

--Find the total sales
SELECT 
	SUM(sales_amount) AS total_sales
From gold.fact_sales

--Find how many items are sold
SELECT 
	SUM(quantity) AS total_quantity_sales
From gold.fact_sales

--Find the average selling price
SELECT 
	AVG(price) AS avg_selling_price
From gold.fact_sales

--Find total number of Orders
SELECT 
	COUNT(DISTINCT order_number) AS total_orders
From gold.fact_sales

--Find total number of product
SELECT 
	COUNT(DISTINCT product_name) AS total_num_of_product
From gold.dim_products

--Find total number of Customers
SELECT 
	COUNT(customer_id) AS total_customers
From gold.dim_customers

--Find total number of Customer that has palced Order
SELECT 
	COUNT(DISTINCT customer_key) AS customer_placed_order
From gold.fact_sales
