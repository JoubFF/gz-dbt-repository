select 
date_date
, count(orders_id) as nb_transactions
, round(sum(total_revenue),0) as revenue
, round(avg(total_revenue),2) as Avereage_Basket
, round(sum(total_margin),0) as margin
, round(sum(operational_margin),0) as operational_margin
from {{ ref("int_orders_operational")}}
group by date_date
order by date_date desc