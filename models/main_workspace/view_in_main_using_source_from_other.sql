{{ config(materialized='view') }}

with source as (
    select * from {{ source('other_workspace', 'cities_other_workspace') }}
)

select * from source