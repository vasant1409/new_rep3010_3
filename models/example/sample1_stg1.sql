WITH  survey1 as (select * from `cloudside-academy.dbt_sample_data.annual-enterprise-survey01`), x as 
  (select year,Industry_name_NZSIOC,Variable_name,Value from survey1)

Select * from x
