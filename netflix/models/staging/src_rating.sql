{{config(
    materialized='table'
)}}

with raw_ratings as (
    select * from MOVIELENS.RAW.RATINGSRAW
)
select 
    USERID as user_id,
    MOVIEID as movie_id,
    RATING as rating,
    To_TIMESTAMP_LTZ(TIMESTAMP) as timestamp_rating
from raw_ratings