select person_name

from(
    select person_name,
    sum(weight)over (order by turn) as cummulative_weight
    from Queue
) as t
where cummulative_weight <=1000
order by cummulative_weight desc
limit 1

