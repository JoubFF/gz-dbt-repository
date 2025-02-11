
with temp as (
 select *
 from {{ ref("stg_raw__sales")}}
 left join {{ ref("stg_raw__product")}}
 using(products_id)
)
select 
*
, CAST((quantity * purchase_price) AS FLOAT64) AS purchase_cost
, Round(revenue - (quantity * purchase_price),2) as margin
from temp
