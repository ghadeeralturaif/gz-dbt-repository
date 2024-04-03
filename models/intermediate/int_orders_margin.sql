{{ config(materialized='table') }}
select 
orders_id,
date_date,
round(SUM(revenue),2) as revenue,
round(SUM(quantity),2) as quantity,
round((cast(purchase_price as float64) * quantity) * quantity,2) As purchase_Cost,
round(revenue - (cast(purchase_price as float64) * quantity),2) AS margin
from `my-project-week2-414708`.`dbt_ghadeer`.`int_sales_margin`
GROUP BY orders_id,date_date
ORDER BY orders_id DESC;