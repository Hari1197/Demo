{{config (
    materialized = 'table')
}}
    select
        AppName,
        Month_of_login,
        count(distinct(USERID)) as number_of_users,
        count(USERID) as frequency
    from ENSEMBLE.ACT.ACTIVITY2
    where AppName like 'JO%'
    group by Month_of_login,AppName