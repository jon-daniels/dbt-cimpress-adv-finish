{{
  config(
    tag = 'load',
    materialized = 'table'
  )
}}

select * from {{ source('agriculture_atlas','rf_country_codes') }}