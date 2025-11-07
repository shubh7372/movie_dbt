WITH DIM_MOVIES AS 
(
    SELECT * FROM
    {{ ref("raw_movies") }}
)

select
    movieId,
    INITCAP(TRIM(title)) AS movie_title,
    SPLIT(genres, '|') AS genre_array,
    genres
from DIM_MOVIES