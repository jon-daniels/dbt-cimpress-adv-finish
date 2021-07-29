{{
  config(
    tag = 'load'
  )
}}

select * from {{ source('agriculture_atlas','kn_agriculture_data_atlas') }}