select *
from {{ ref('stg_gz_raw_data__adwords') }}
inner join {{ ref('stg_gz_raw_data__bing') }} 
using(campaign_key)