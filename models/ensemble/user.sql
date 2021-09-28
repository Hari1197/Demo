{{config (
    materialized = 'table')
}}

with app as (

    select
        AppName,
        count(distinct(ActiveUserId)) as number_of_users

    from Activ

    group by AppName
 )