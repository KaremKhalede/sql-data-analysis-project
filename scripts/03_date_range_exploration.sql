/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN() => to find the earliest date in a dataset.
    - MAX()=> to find the latest date in a dataset. 
    - DATEDIFF() => to calculate the time difference between two dates based on the specified unit (days, months, years).
    - GETDATE() => Returns the current system date and time.

===============================================================================
*/

-- Determine the first and last order date
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date
FROM gold.fact_sales;

-- Determine the first and last order date and the total duration in days
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(DAY, MIN(order_date), MAX(order_date)) AS order_range_days
FROM gold.fact_sales;

-- Determine the first and last order date and the total duration in months
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales;

-- Determine the first and last order date and the total duration in years
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(YEAR, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales;

-- Determine the first and last order date and the total duration in days,months and years
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(DAY, MIN(order_date), MAX(order_date)) AS order_range_months,
    DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS order_range_months,
    DATEDIFF(YEAR, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales;

-- Find the youngest and oldest customer based on birthdate
SELECT 
    MIN(birthdate) AS oldest_birthdate,
    MAX(birthdate) AS youngest_birthdate
FROM gold.dim_customers;

-- Find the youngest and oldest customer based on birthdate as a Age and the average age of customers
SELECT 
    MIN(birthdate) AS oldest_birthdate,
    DATEDIFF(YEAR, MIN(birthdate), GETDATE()) AS oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    DATEDIFF(YEAR, MAX(birthdate), GETDATE()) AS youngest_age,
    AVG(DATEDIFF(YEAR, birthdate, GETDATE())) AS average_age
FROM gold.dim_customers;


