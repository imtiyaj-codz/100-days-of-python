select * from boarding_passes as one
full outer join tickets as two
on one.ticket_no = two.ticket_no
where boarding_no is null;




