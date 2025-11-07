{{config(materialized = 'table')}}

WITH RATINGS AS (
  SELECT * FROM MOVIE.RAW.RATINGS
)

SELECT
  userId AS user_id,
  movieId AS movie_id,
  rating,
  TO_TIMESTAMP_LTZ(timestamp) AS rating_timestamp
FROM RATINGS