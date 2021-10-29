SELECT month,proxytitle,Number_of_users,frequency, dense_rank() OVER(PARTITION BY month order by Number_of_users desc) AS rank_user
FROM ensemble.DBT_HARI1197.omnititle
