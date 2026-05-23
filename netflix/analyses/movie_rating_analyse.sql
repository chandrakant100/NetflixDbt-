with movie_rating_analyse as (
    select 
        movie_id,
        title,
        genres,
        avg(rating) as average_rating
    from MOVIELENS.STAGING.SRC_MOVIES m
    join MOVIELENS.RAW.RATINGRAW r
    on m.movie_id = r.movie_id
    group by movie_id, title, genres
)