with raw_movies as (
    select * from MOVIELENS.RAW.MOVIERAW
)
select 
    MOVIEID as movie_id
from raw_movies