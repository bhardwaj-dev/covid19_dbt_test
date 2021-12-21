{{ config(materialized='table') }}

with test as (
    select 
    TOTAL_ACTIVE_CASES,
    LOCATION_ISO_CODE as location_id,
    DATE
    from {{ source('nitesh_source', 'COVID_19_INDONESIA_NITESH_BHARDWAJ') }}
)
select * from test