WITH  survey2 as (select * from 'cloudside-academy.dbt_sample_data.annual-enterprise-survey01'), y as (select year,industry_name,variable,Value from survey2)

Select * from y
