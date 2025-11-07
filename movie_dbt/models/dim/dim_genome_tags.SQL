WITH DIM_GENOME_TAGS AS (
    SELECT * FROM {{ ref('raw_genome_tags') }}
)

SELECT
    tag_id,
    INITCAP(TRIM(tag)) AS tag_name
FROM DIM_GENOME_TAGS