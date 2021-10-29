{{config (
    materialized = 'table')
}}
    select
        Month,
        proxytitle,        
        count(distinct(USER)) as number_of_users,
        count(USER) as frequency
    from user.public.final1
    where AppName like '%OMNI%'
    group by proxytitle, Month
    order by number_of_users desc,Month asc