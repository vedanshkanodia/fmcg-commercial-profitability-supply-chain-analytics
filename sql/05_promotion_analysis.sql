-- FMCG Commercial Profitability & Supply Chain Analytics
-- 05 - Promotion Margin Impact

SELECT
    CASE
        WHEN promo_flag = 1 THEN 'Promotional'
        ELSE 'Non-Promotional'
    END AS promotion_status,

    ROUND(SUM(net_sales), 2) AS net_sales,

    ROUND(
        SUM(net_sales) - SUM(units_sold * purchase_cost),
        2
    ) AS gross_profit,

    ROUND(
        (
            SUM(net_sales) - SUM(units_sold * purchase_cost)
        ) * 100.0 / SUM(net_sales),
        2
    ) AS margin_pct,

    ROUND(AVG(discount_pct), 2) AS avg_discount_pct

FROM sales
GROUP BY promo_flag
ORDER BY margin_pct DESC;
