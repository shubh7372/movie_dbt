{{ config(materialized = 'table') }}

Select A.*, B.release_date 
from {{ ref('fct_ratings') }} as A
left join 
{{ ref('seed_movie_release_date') }} as B
on A.movie_id = B.movie_id