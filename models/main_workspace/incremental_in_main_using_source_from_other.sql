{{ config(materialized='incremental', incremental_strategy='append') }}

with source as (
    select * from {{ source('other_workspace', 'cities_other_workspace') }}
)

select * from source
{% if is_incremental() %}
order by random()
limit 1
{% endif %}