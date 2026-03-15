select
count(*) as total_tickets,
case
when total_amount < 20000 then 'Low Price Ticket'
when total_amount between 20000 and 150000 then 'Md Price Ticket'
else 'high price ticket'
end as price_chart
from bookings
group by price_chart;

select  
count(*),
case 
when scheduled_departure between '2017-03-01' and '2017-05-31' then 'Spring'
when scheduled_departure between '2017-06-01' and '2017-08-31' then 'Summer'
when scheduled_departure between '2017-09-01' and '2017-11-30' then 'Fall'
else 'winter'
end as seasons
from flights
group by seasons; --works only for the 2017 year months

select 
count(*),
case 
when extract(month from scheduled_departure) in(12,1,2) then 'winter' 
when extract(month from scheduled_departure) between 3 and 5 then 'Spring'
when extract(month from scheduled_departure) between 6 and 8 then 'Summer'
when extract(month from scheduled_departure) between 9 and 11 then 'Fall'
end as seasons
from flights
group by seasons;