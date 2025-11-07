WITH DIM_USERS AS (
  SELECT DISTINCT user_id FROM {{ ref('raw_ratings') }}
),

DIM_TAGS AS (
  SELECT DISTINCT user_id FROM {{ ref('raw_tags') }}
)

SELECT DISTINCT user_id
FROM (
  SELECT * FROM DIM_USERS
  UNION
  SELECT * FROM DIM_TAGS
)