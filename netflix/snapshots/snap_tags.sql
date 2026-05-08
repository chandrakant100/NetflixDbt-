{% snapshot snap_tags %}

{{ config(
    target_schema='snapshots',
    unique_key=['user_id', 'movie_id', 'tag'],
    strategy='timestamp',
    updated_at='timestamp_tag',
    invalidate_hard_deletes=True
)}}

