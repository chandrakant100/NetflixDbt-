with raw_movies as (
    select * from MOVIELENS.RAW.MOVIERAW
)
select 
    MOVIEID as movie_id,
    TITLE as title,
    GENRES as genres,
from raw_movies