select
count(*),
case
when (actual_departure -scheduled_departure ) is null then 'No Flights'
when (actual_departure -scheduled_departure ) < '00:05' then 'On Time'
when (actual_departure -scheduled_departure ) < '01:00' then 'little Late'
else 'very late'
end as is_late
from flights
group by is_late;

	









