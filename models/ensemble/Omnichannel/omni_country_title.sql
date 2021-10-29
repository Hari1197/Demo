{{config (
    materialized = 'table')
}}
    select
        country,
        proxytitle,        
        count(distinct(USER)) as number_of_users,
        count(USER) as frequency
    from user.public.final1
    where AppName like '%OMNI%'
    group by proxytitle, country
    order by number_of_users desc