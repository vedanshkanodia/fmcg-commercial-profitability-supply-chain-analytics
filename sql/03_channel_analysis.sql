-- Channel Performance

SELECT
    channel,
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
    ) AS margin_pct
FROM sales
GROUP BY channel
ORDER BY net_sales DESC;
