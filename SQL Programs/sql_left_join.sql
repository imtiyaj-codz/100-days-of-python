select * from boarding_passes as ft
full outer join tickets as ti
on ft.ticket_no = ti.ticket_no
where ft.ticket_no is null;

select * from aircrafts_data as a 
left join flights as f
on a.aircraft_code = f.aircraft_code
where f.flight_id is null;