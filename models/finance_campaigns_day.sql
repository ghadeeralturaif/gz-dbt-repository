    select *
    from (
        SELECT 
  date_date,
  operational_margin - ads_cost AS ads_margin,
  ROUND(average_basket,2) AS average_basket,
  operational_margin,
  ads_cost,
  ads_impression,
  ads_clicks,
  quantity,
  revenue,
  purchase_cost,
  margin,
  shipping_fee,
  logcost,
  ship_cost
FROM `my-project-week2-414708`.`dbt_ghadeer`.`int_campaigns`
FULL OUTER JOIN `my-project-week2-414708`.`dbt_ghadeer_finance`.`finance_days`
  USING (date_date)
ORDER BY date_date DESC
    ) as model_limit_subq