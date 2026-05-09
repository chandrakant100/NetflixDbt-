{# select
    movie_id,
    tag_id,
    relevance
from {{ref("fct_gnome_score")}}
where relevance <= 0 #}

{{no_nulls_check(ref('fct_gnome_score'))}}