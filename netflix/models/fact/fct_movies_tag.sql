with fct_movies_tags as(
    select * from {{ref('dim_movies_tag')}}
)
select * from fct_movies_tags