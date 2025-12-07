WITH GENOME_SCORES AS (
  SELECT * FROM {{ source('raw', 'raw_genome_scores') }}
)

SELECT
  movieId AS movie_id,
  tagId AS tag_id,
  relevance
FROM GENOME_SCORES