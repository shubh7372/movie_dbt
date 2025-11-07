{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}

with fct_ratings as (
    select * from {{ ref('raw_ratings') }}
)

SELECT
  user_id,
  movie_id,
  rating,
  rating_timestamp
FROM fct_ratings
WHERE rating IS NOT NULL

{% if is_incremental() %}
  AND rating_timestamp > (SELECT MAX(rating_timestamp) FROM {{ this }})
{% endif %}


-- this: fct_ratings and  MAX(rating_timestamp) = timestamp of latest rating in exisitng data... if any new data or row is added it will incrementally load that