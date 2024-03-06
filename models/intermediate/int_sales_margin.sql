SELECT 
    p.products_id, 
    s.date_date, 
    s.orders_id,
    s.revenue,
    s.quantity, 
    CAST(p.purchse_price AS FLOAT64), 
    ROUND(s.quantity*CAST(p.purchse_price AS FLOAT64),2) AS purchase_cost,
    s.revenue - ROUND(s.quantity*CAST(p.purchse_price AS FLOAT64),2) AS margin
FROM {{ref("stg_gz_raw_data__sales")}} s  
LEFT JOIN {{ ref("stg_gz_raw_data__product") }} p
on s.pdt_id=p.products_id