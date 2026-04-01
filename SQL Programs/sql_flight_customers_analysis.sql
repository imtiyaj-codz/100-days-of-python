select * from aircrafts_data as a
left join flights as b
on a.aircraft_code = b.aircraft_code
where b.flight_no is null;

select 
a.seat_no,
count(*) as total
from seats as a
left join boarding_passes as b
on a.seat_no = b.seat_no
group by a.seat_no
order by total desc
limit 461;

select 
right(a.seat_no,1),
count(*) as total
from seats as a
left join boarding_passes as b
on a.seat_no = b.seat_no
group by right(a.seat_no,1)
order by total desc
limit 461;








