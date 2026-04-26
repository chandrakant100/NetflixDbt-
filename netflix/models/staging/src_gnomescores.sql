with gnomescoresraw as (
    select * from MOVIELENS.RAW.GNOMESCORESRAW
)
select 
    MOVIEID as movie_id,
    TAGID as tag_id,
    RELEVANCE as relevance
from gnomescoresraw