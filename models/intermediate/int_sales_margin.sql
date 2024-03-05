select 
products_id,
orders_id,
date_date,
revenue, 
quantity, 
purchase_price,
Round(quantity* purchase_price,2) as purchase_cost
Round(revenue-(quantity* purchase_price),2) as margin 
from {{ref("stg_gz_raw_data__sales")}}
left join {{ref("stg_gz_raw_data__product")}}
using(products_id)