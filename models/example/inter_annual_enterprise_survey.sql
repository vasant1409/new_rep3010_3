with
{{config(materialized='view')}}

inter_survey as (
SELECT
     SUM(CAST(t2.value AS INT64)) AS Total_Value,
     {{ dbt_utils.star(from=ref('stg_annual_enterprise_survey01'), except=["id","value"]) }},
     {{ dbt_utils.star(from=ref('stg_annual_enterprise_survey02'), except=["id","value"]) }}
        
FROM
     {{ ref('stg_annual_enterprise_survey02') }} AS t2
RIGHT JOIN
     {{ ref('stg_annual_enterprise_survey01') }} AS t1
ON
    t2.id = t1.id
WHERE
    t2.value <> 'C' AND t1.value <> 'C'
GROUP BY
      Year, 
      Industry_code, 
      Industry_name, 
      Size_group, 
      Variable, 
      Units,
      Variable_category,
      Industry_aggregation_NZSIOC
)

Select * from inter_survey
