  SELECT
     date_date
     ,COUNT(orders_id) AS nb_transactions
     ,ROUND(SUM(total_revenue),0) AS revenue
     ,ROUND(AVG(total_revenue),1) AS average_basket
     ,ROUND(SUM(total_margin),0) AS margin
     ,ROUND(SUM(operational_margin),0) AS operational_margin
     ,ROUND(SUM(total_purchase_cost),0) AS purchase_cost
     ,ROUND(SUM(shipping_fee),0) AS shipping_fee
     ,ROUND(SUM(logcost),0) AS logcost
     ,ROUND(SUM(ship_cost),0) AS ship_cost
     ,SUM(total_quantity) AS quantity
 FROM {{ref("int_orders_operational")}}
 GROUP BY  date_date
 ORDER BY  date_date DESC




