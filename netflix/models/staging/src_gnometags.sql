with gnometagsraw as (
    select * from MOVIELENS.RAW.GNOMETAGSRAW
)
select 
    TAGID as tag_id,
    TAG as tag,
from gnometagsraw