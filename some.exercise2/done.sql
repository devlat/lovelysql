-- IN PROCESS

with ex as 
	(select a.id, a.dt, b.credit - a.s "left", a.s, a.name
		from t2 a
		left join t1 b
		on a.id = b.id
		order by dt desc)
select id, dt, lag("left") over() - s, s, name
from ex;