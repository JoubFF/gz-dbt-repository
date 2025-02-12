
 SELECT
DATE_TRUNC (date_date, MONTH) as datemonth
, sum(ads_margin) AS Ads_Margin
, sum(Average_Basket) AS Average_Basket
, sum(operational_margin) AS Operationnal_Margin
, sum(ads_cost) AS Ads_cost
, sum(ads_impression) AS Ads_Impression
, sum(ads_clicks) AS Ads_Clicks
, sum(quantity) AS Quantity
, sum(revenue) AS Revenue
, sum(purchase_cost) AS Purchase_cost
, sum(margin) AS Margin
, sum(shipping_fee) AS shipping_fee
, sum(logCost) AS logCost
, sum(ship_cost) AS Ship_cost
 FROM {{ref('finance_campaigns_day')}}
 GROUP BY 1
 ORDER BY 1 DESC