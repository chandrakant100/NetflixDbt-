with gnome_score as (
    select 
        movie_id,
        tag_id,
        relevance
    from {{ ref('src_gnomescores') }}
)
select 
    movie_id,
    tag_id,
    round(relevance, 4) as relevance
from gnome_score