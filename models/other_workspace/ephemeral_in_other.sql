{{ config(materialized='ephemeral') }}

select explode(sequence(1, 5)) as id