WITH LINKS AS (
  SELECT * FROM MOVIE.RAW.LINKS
)

SELECT
  movieId AS movie_id,
  imdbId AS imdb_id,
  tmdbId AS tmdb_id
FROM LINKS