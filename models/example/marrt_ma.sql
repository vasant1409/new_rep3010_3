WITH
   {{config(materialized='table')}}

MART as (
SELECT * FROM {{ref('sample1_stg1')}} 
UNION ALL
SELECT * FROM {{ref('sample2_stg2')}} 
) 

SELECT * FROM MART
