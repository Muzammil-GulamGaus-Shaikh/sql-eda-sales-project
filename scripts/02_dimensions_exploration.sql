/*
=============================================================
Exploring Customer Geography and Product Hierarchy (Dimensions Exploration)
=============================================================
Objective:
    Identify the geographic distribution of customers
    and understand the product category structure
    before performing sales analysis.
*/

-- Explore distinct countries where customers are located
SELECT DISTINCT country
FROM gold.dim_customers
ORDER BY country;


-- Explore product category hierarchy (Category → Subcategory)
SELECT DISTINCT category, subcategory
FROM gold.dim_products
ORDER BY category, subcategory;
