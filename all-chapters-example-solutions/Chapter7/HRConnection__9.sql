column a_dummy noprint
select 'sing', 3 a_dummy
from dual
union
select 'I''d like to teach', 1 a_dummy
from dual
union
select 'the world to', 2 a_dummy
from dual
order by a_dummy;