
with temp as (
 select *
 , CAST((quantity * purchase_price) AS FLOAT64) AS purchase_costs
 from {{ ref("stg_raw__sales")}}
 left join {{ ref("stg_raw__product")}}
 using(products_id)
)
select 
*
, Round(revenue - (quantity * purchase_price),2) as margin
, {{margin_percent('revenue','purchase_costs')}}
from temp
