{{config (
    materialized = 'table')
}}
    select
        Month,
        proxydept,        
        count(distinct(USER)) as number_of_users,
        count(USER) as frequency
    from user.public.final1
    where AppName like '%JO%'
    group by proxydept, Month
    order by number_of_users desc,Month asc