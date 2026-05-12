{{ config(materialized='view') }}

with source as (
    select * from {{ source('main_workspace', 'cities') }}
)

select * from source