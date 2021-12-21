{{ config(materialized='table') }}

with test as (
    select 
    _row as id,
    DATE
    from {{ source('nitesh_source', 'COVID_19_INDONESIA_NITESH_BHARDWAJ') }}
)
select * from test