{{ config(materialized='view') }}

with ref as (
    select * from {{ ref('table_in_other') }}
)

select * from ref