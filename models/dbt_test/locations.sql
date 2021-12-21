{{ config(materialized='table') }}

with test as (
     select 
     distinct(LOCATION_ISO_CODE) as ID,
    LOCATION ,
     LOCATION_LEVEL,
     TIME_ZONE,
     PROVINCE,
     ISLAND,
     CONTINENT,
     COUNTRY,
     SPECIAL_STATUS
     from {{ source('nitesh_source', 'COVID_19_INDONESIA_NITESH_BHARDWAJ') }}
     order by location asc
)
select * from test