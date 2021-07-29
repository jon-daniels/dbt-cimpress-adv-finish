{{
  config(
    tag = 'load'
  )
}}

select * from {{ source('agriculture_atlas','kn_water_data_atlas') }}