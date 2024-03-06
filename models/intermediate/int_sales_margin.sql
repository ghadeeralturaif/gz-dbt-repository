select 
products_id,
orders_id,
date_date,
revenue,
purchase_price,
quantity,
round(revenue - (cast(purchase_price as float64) * quantity),2) AS margin,
round((cast(purchase_price as float64) * quantity) * quantity,2) As purchase_cost
from {{ ref('stg_gz_raw_data__sales') }}
left join {{ ref('stg_gz_raw_data__product') }}
using(products_id)

