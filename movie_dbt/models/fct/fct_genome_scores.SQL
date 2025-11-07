WITH FCT_GENOME_SCORES AS (
    SELECT * FROM {{ ref('raw_genome_scores') }}
)

SELECT
    movie_id,
    tag_id,
    ROUND(relevance, 4) AS relevance_score
FROM FCT_GENOME_SCORES
WHERE relevance > 0