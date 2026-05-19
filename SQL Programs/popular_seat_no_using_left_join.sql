select a.seat_no , count(*) from seats a
left join boarding_passes b
on a.seat_no = b.seat_no
group by a.seat_no
order by count(*) desc;







