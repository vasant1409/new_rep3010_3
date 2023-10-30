WITH  survey2 as (select * from `cloudside-academy.dbt_sample_data.annual-enterprise-survey02`), y as 
  (select year,industry_name_ANZSIC,variable,Value from survey2)

Select * from y
