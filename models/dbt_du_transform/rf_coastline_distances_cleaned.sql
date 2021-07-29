{{
  config(
    tag = 'transform'
  )
}}

SELECT 
  REPLACE(country,'"','') AS country
  , distance_km::NUMBER AS distance_km
  FROM
    {{ref('rf_coastline_distances')}}