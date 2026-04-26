with linksraw as (
    select * from MOVIELENS.RAW.LINKSRAW
)
select 
    MOVIEID as movie_id,
    IMDBID as imdb_id,
    TMDBID as tmdb_id
from linksraw