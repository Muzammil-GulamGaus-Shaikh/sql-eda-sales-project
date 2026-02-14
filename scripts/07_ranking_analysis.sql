/*
=============================================================
Ranking Analysis
=============================================================
Purpose:
    Identify top-performing and bottom-performing
    entities based on key business metrics.

    This analysis focuses on ranking products and
    customers to highlight highest revenue generators,
    lowest performing products, and least active customers.

    The results help support decision-making related
    to product optimization, customer targeting,
    and business strategy.
*/

-- Which 5 products generates the higest revenue
SELECT TOP 5
	p.product_name,
	SUM(f.sales_amount) revenue
FROM gold.dim_products p
LEFT JOIN gold.fact_sales f
ON f.product_key = p.product_key
GROUP BY p.product_name
ORDER BY revenue DESC

-- Which are the 5 worst products in terms of sales
SELECT TOP 5
	p.product_name,
	SUM(f.sales_amount) revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
ON f.product_key = p.product_key
GROUP BY p.product_name
ORDER BY revenue ASC

--The 3 customer with the fewest orders placed
SELECT TOP 3
	c.first_name,
	c.last_name,
	COUNT(f.quantity) order_count
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON f.customer_key = c.customer_key
GROUP BY c.first_name, c.last_name
ORDER BY COUNT(f.quantity) ASC
