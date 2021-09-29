{{config (
    materialized = 'table')
}}
    select
        AppName,
        count(distinct(ActiveUserId)) as number_of_users
    from ENSEMBLE.ACT.ACTIV
    where AppName Not like '%ODAG%' and AppName Not like'%Sales%'
    group by AppName
 