{{config (
    materialized = 'table')
}}
    select
        country,
        proxydept,        
        count(distinct(USER)) as number_of_users,
        count(USER) as frequency
    from user.public.final1
    where AppName like '%Sub-%'
    group by proxydept, country
    order by number_of_users desc, country asc