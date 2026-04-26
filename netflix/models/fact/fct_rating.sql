{{
    config(
        materialized='incremental',
        on_change_schema='FAIL',
    )
}}

with src_ratings as (
    select * from {{ ref('src_rating') }}
)
select 
    user_id,
    movie_id,
    rating,
    timestamp_rating
from src_ratings
where rating is not null

{% if is_incremental() %}
    where timestamp_rating > (select max(timestamp_rating) from {{ this }})
{% endif %}