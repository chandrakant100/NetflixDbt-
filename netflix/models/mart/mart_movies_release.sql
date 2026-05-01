{{
  config(
    materialized = 'table'
    )
}}

with fct_rating as(
    select * from {{ref('fct_rating')}}
),
seed_dates as (
    select * from {{ref('movies_release')}}
)
select
    f.*,
    case when s.release_date is not null then 'known' 
    else 'unknown' 
    end as release_status
from fct_rating f
left join seed_dates s on f.movie_id = s.movie_id
where s.release_date is not null
