/*
=============================================================
Key Metrics Report
=============================================================
Purpose:
    Generate a consolidated report of all essential
    business performance metrics in a single result set.

    The objective is to simplify reporting and make
    the results suitable for dashboards, summaries,
    and executive-level analysis.
*/

-- Generate a report that show all key metrics of the business

SELECT
	'Total Sales' as measure_name,
	SUM(sales_amount) AS measure_value
From gold.fact_sales
UNION ALL
SELECT
	'Total Quantity',
	SUM(quantity)
From gold.fact_sales
UNION ALL
SELECT 
	'Avrage Price',
	AVG(price) AS avg_selling_price
From gold.fact_sales
UNION ALL
SELECT 
	'Total Nr. Orders',
	COUNT(DISTINCT order_number) AS total_orders
From gold.fact_sales
UNION ALL
SELECT 
	'Total Nr. Products's,
	COUNT(DISTINCT product_name) AS total_num_of_product
From gold.dim_products
UNION ALL
SELECT 
	'Total Nr. Customers',
	COUNT(customer_id) AS total_customers
From gold.dim_customers
