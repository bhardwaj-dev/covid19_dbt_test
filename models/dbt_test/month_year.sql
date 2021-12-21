{{ config(materialized='table') }}

with test as (
    select 
    _row as id,
   date_part(year,date::DATE) as year,
monthname(date) as month
    from {{ source('nitesh_source', 'COVID_19_INDONESIA_NITESH_BHARDWAJ') }}
)
select * from test