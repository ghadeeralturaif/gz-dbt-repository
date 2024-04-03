--{{config(materialized="view")}}
select *
from {{ ref('int_sales_margin') }}