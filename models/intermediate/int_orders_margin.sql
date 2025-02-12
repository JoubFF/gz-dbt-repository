SELECT 
    orders_id,
    date_date,
    round(SUM(revenue),2) AS total_revenue,
    round(SUM(quantity),2) AS total_quantity,
    round(SUM(purchase_costs),2) AS total_purchase_cost,
    round(SUM(margin),2) AS total_margin
FROM {{ ref("int_sales_margin") }}
GROUP BY orders_id, date_date
ORDER BY orders_id DESC