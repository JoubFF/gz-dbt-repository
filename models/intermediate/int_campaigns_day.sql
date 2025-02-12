SELECT 
    date_date,
    round(SUM(ads_cost),2) AS ads_cost,
    round(SUM(impression),2) AS ads_impression,
    round(SUM(click),2) AS ads_clicks,
FROM {{ ref("int_campaigns") }}
GROUP BY date_date
ORDER BY date_date DESC