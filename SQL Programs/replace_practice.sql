select 
cast(replace(passenger_id ,' ','') as BIGINT)
from tickets;

select 
cast(replace(flight_no,'PG',' ') as BIGINT)
from flights








