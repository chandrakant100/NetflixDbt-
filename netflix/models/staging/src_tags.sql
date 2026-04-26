with tagsraw as (
    select * from MOVIELENS.RAW.TAGSRAW
)
select 
    USERID as user_id,
    MOVIEID as movie_id,
    TAG as tag,
    To_TIMESTAMP_LTZ(TIMESTAMP) as timestamp
from tagsraw