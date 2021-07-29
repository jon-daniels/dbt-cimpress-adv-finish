{{
  config(
    tag = 'transform'
  )
}}

SELECT 
  REPLACE(country,'"','') AS country
  , rank::NUMBER AS rank
  , sq_km::NUMBER AS sq_km
  FROM
    {{ref('rf_square_kilometers')}}