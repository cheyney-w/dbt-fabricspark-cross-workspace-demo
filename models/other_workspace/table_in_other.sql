{{ config(materialized='table', database="OtherLakehouse", workspace_name="OtherWorkspace") }}

select explode(sequence(1, 5)) as id