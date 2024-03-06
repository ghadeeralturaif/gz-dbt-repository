select *
from {{ ref('int_orders_operational') }}
join {{ ref('int_orders_margin') }} using (orders_id)
join {{ ref('int_sales_margin') }}
using (orders_id)
