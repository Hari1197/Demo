{{config (
    materialized = 'table')
}}
    select
        AppName,
        count(distinct(ActiveUserId)) as number_of_users
    from ENSEMBLE.ACTIV
    group by AppName
 