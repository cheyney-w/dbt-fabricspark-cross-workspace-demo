{{ config(materialized='table') }}

select 
    a.id as a_id
    , b.id as b_id
from range(50000) as a
cross join range(1,50000) as b