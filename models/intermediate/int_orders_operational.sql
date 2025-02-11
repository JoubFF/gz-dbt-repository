with temp as (
 select *
 from {{ ref("int_orders_margin")}}
 left join {{ ref("stg_raw__ship")}}
 using(orders_id)
)
select 
orders_id
, date_date
, round((sum(total_margin) + sum(shipping_fee) - sum(logcost) - sum(ship_cost)),2) as operational_margin
from temp
group by orders_id, date_date
order by orders_id desc