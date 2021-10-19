{{config (
    materialized = 'table')
}}
    select
        Month_of_login,
        proxytitle,        
        count(distinct(USERID)) as number_of_users,
        count(USERID) as frequency
    from ENSEMBLE.ACT.final
    group by Month_of_login,proxytitle