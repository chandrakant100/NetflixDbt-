{{
  config(
    materialized = 'ephemeral',
    )
}}

with movies as (
    select * from {{ ref('dim_movies') }}
),
tags as (
    select * from {{ ref('dim_gnome_tags') }}
),
scores as (
    select * from {{ ref('fct_gnome_score') }}
)
Select
    m.movie_id,
    m.title,
    t.tag,
    s.relevance
from movies m
left join scores s on m.movie_id = s.movie_id
left join tags t on s.tag_id = t.tag_id
where t.tag is not null