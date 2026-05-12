{{ config(materialized='table') }}

with ref as (
    select * from {{ ref('ephemeral_in_other') }}
)

select * from ref