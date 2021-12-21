{{ config(materialized='table') }}

with test as (
    select 
    _row as id,
  to_date(to_char(DATE))  date
    from {{ source('nitesh_source', 'COVID_19_INDONESIA_NITESH_BHARDWAJ') }}
)
select id, TRY_TO_DATE(date) date from test