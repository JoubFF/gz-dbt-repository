with temp as (
 select *
 from {{ ref("int_orders_margin")}}
 left join {{ ref("stg_raw__ship")}}
 using(orders_id)
)
select 
*
, round((total_margin + shipping_fee - logcost - ship_cost),2) as operational_margin
from temp
order by orders_id desc