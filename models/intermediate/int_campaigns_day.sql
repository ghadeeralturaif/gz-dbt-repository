SELECT *
FROM {{ ref('stg_gz_raw_data__adwords') }}
UNION ALL 
SELECT *
{{ ref('stg_gz_raw_data__bing') }}