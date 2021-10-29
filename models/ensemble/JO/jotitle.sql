{{config (
    materialized = 'table')
}}
    select
        Month,
        proxytitle,        
        count(distinct(USER)) as number_of_users,
        count(USER) as frequency
    from user.public.final
    where AppName like '%JO%'
    group by Month,proxytitle