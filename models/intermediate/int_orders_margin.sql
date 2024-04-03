SELECT 
    orders_id,
    date_date,
    ROUND(SUM(revenue), 2) AS revenue,
    ROUND(SUM(quantity), 2) AS quantity,
    ROUND(SUM(CAST(purchase_price AS FLOAT64) * quantity), 2) AS purchase_Cost,
    ROUND(SUM(revenue) - SUM(CAST(purchase_price AS FLOAT64) * quantity), 2) AS margin
FROM 
    {{ ref('int_sales_margin') }}
GROUP BY 
    orders_id, date_date
ORDER BY 
    orders_id DESC