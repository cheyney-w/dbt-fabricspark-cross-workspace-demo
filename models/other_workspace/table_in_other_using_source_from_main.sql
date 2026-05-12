{{ config(materialized='table', database='OtherLakehouse', workspace_name='OtherWorkspace') }}

with source as (
    select * from {{ source('main_workspace', 'cities') }}
)

select * from source