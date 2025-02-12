  SELECT
date_date
, operational_margin - ads_cost as ads_margin
, average_basket
, operational_margin
, ads_cost
, ads_impression
, ads_clicks
, quantity
, revenue
, purchase_cost
, margin
, shipping_fee
, logcost
, ship_cost
 FROM {{ref("finance_days")}}
 left join {{ref("int_campaigns_day")}}
 using (date_date)
 ORDER BY  date_date DESC
