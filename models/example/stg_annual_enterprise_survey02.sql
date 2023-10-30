WITH
survey AS (
SELECT * FROM `cloudside-academy.dbt_sample_data.annual-enterprise-survey02`),

n AS ( 
SELECT 
    id,
    year AS Year,
    industry_code_ANZSIC AS Industry_code,
    industry_name_ANZSIC AS Industry_name,
    rme_size_grp AS Size_group,
    variable AS Variable,
    value,
    unit AS Units
FROM survey
)

SELECT * FROM n
