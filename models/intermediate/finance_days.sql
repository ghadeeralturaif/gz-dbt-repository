SELECT
    date_date,
     quantity 
FROM {{ ref('int_orders_operational') }}

