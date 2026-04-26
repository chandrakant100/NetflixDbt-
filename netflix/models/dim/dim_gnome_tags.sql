with gnome_dim as (
    select 
        tag_id,
        tag
    from {{ ref('src_gnometags') }}
)
select 
    tag_id,
    initcap(trim(tag)) as tag
from gnome_dim