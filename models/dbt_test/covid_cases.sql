{{ config(materialized='table') }}

with test as (
    select 
    _row as id,
    TOTAL_RECOVERED,
    TOTAL_CASES_PER_MILLION,
    TOTAL_CASES,
    CASE_RECOVERED_RATE,
    TOTAL_DEATHS,
    TOTAL_ACTIVE_CASES
    from {{ source('nitesh_source', 'COVID_19_INDONESIA_NITESH_BHARDWAJ') }}
)
select * from test