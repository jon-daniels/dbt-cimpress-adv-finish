{{
  config(
    tag = 'load'
  )
}}

select * from {{ source('agriculture_atlas','rf_coastline_distances') }}