
/*
===============================================================================
Dimensions Exploration
===============================================================================
Purpose:
    - To explore the structure of dimension tables.
	
SQL Functions Used:
    - DISTINCT
    - ORDER BY
===============================================================================
*/

-- Retrieve a list of unique countries from which customers originate
SELECT DISTINCT 
    country 
FROM gold.dim_customers
ORDER BY country;
-- we have 7 unique countries in our customers dimension --

SELECT DISTINCT 
    category
FROM gold.dim_products
ORDER BY category;
-- we have 4 unique categories in our products dimension --


SELECT DISTINCT 
    subcategory
FROM gold.dim_products
ORDER BY subcategory;
-- we have 36 unique subcategories in our products dimension --

SELECT DISTINCT 
     product_name 
FROM gold.dim_products
ORDER BY product_name;
-- we have 295 unique products in our products dimension --


-- Retrieve a list of unique categories, subcategories, and products
SELECT DISTINCT 
    category, 
    subcategory, 
    product_name 
FROM gold.dim_products
ORDER BY category, subcategory, product_name;

