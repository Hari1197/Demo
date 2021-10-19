{{config (
    materialized = 'table')
}}
    select
        AppName,
        Month_of_login,
        proxytitle,
        proxydept,
        count(distinct(USERID)) as number_of_users,
        count(USERID) as frequency
    from ENSEMBLE.ACT.final
        group by Month_of_login,proxytitle