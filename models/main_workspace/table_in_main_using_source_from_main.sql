{{ config(materialized='table') }}

with source as (
    select * from {{ source('main_workspace', 'cities') }}
)

select * from source