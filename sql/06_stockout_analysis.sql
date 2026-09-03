-- FMCG Commercial Profitability & Supply Chain Analytics
-- 06 - Stockout Performance

SELECT
    category,
    COUNT(*) AS transactions,

    ROUND(
        AVG(stock_out_flag) * 100,
        2
    ) AS stockout_rate_pct,

    ROUND(
        SUM(
            CASE
                WHEN stock_out_flag = 1 THEN net_sales
                ELSE 0
            END
        ),
        2
    ) AS stockout_revenue

FROM sales
GROUP BY category
ORDER BY stockout_rate_pct DESC;
