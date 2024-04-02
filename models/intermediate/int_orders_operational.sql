select
*,
margin + shipping_fee - logcost - cast(ship_cost as float64) AS Operational_margin
from {{ ref('int_orders_margin') }}
left join {{ ref('stg_gz_raw_data__ship') }}
using(orders_id)
ORDER BY orders_id desc