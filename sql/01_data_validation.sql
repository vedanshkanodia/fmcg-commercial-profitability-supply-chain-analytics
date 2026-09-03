-- FMCG Commercial Profitability & Supply Chain Analytics
-- 01 - Data Validation

-- Total number of transaction records
SELECT
    COUNT(*) AS total_rows
FROM sales;

-- Date coverage
SELECT
    MIN(date) AS start_date,
    MAX(date) AS end_date
FROM sales;

-- Number of unique SKUs
SELECT
    COUNT(DISTINCT sku_id) AS unique_skus
FROM sales;

-- Number of countries
SELECT
    COUNT(DISTINCT country) AS unique_countries
FROM sales;

-- Number of sales channels
SELECT
    COUNT(DISTINCT channel) AS unique_channels
FROM sales;

-- Check for missing values in key analytical fields
SELECT
    COUNT(*) FILTER (WHERE net_sales IS NULL) AS missing_net_sales,
    COUNT(*) FILTER (WHERE units_sold IS NULL) AS missing_units_sold,
    COUNT(*) FILTER (WHERE purchase_cost IS NULL) AS missing_purchase_cost,
    COUNT(*) FILTER (WHERE category IS NULL) AS missing_category,
    COUNT(*) FILTER (WHERE country IS NULL) AS missing_country
FROM sales;
