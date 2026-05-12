{{ config(materialized='incremental', incremental_strategy='append') }}

with ref as (
    select * from {{ ref('table_in_other') }}
)

select * from ref
{% if is_incremental() %}
order by random()
limit 1
{% endif %}