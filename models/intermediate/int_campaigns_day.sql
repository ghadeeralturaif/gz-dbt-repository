SELECT
    date_date,
    SUM(cast(ads_cost as INT64)) as ads_cost,
    SUM(impression) as ads_impression,
    SUM(click) as ads_clicks
FROM {{ ref("int_campaigns") }}
GROUP BY date_date
ORDER BY date_date DESC

