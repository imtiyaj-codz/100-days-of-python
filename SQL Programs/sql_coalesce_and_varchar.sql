select 
actual_arrival - scheduled_arrival
from flights;

select 
scheduled_arrival,
cast(scheduled_arrival as date)
from flights;

select 
coalesce(cast(actual_arrival - scheduled_arrival AS VARCHAR), 'Not arrived')
from flights;

select  
cast(scheduled_arrival  as time)
from flights;

select  
coalesce(cast(scheduled_arrival - actual_arrival as text) ,'not arrived')
from flights;

select 
length(cast(actual_arrival as varchar)) --if we haven't used the cast it would show an error
from flights;                            -- because the data contains timestamps in it

select  
cast(ticket_no as bigint)
from tickets;








