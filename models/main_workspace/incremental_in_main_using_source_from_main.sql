{{ config(materialized='incremental', incremental_strategy='append') }}

with source as (
    select * from {{ source('main_workspace', 'cities') }}
)

select * from source
{% if is_incremental() %}
order by random()
limit 1
{% endif %}