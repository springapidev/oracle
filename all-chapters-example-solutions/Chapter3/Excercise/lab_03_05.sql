select last_name "Name",
    length(last_name) "Length"
from employees
/*where last_name like 'J%'
or last_name like 'A%'
or last_name like 'M%';*/
where last_name like '&StartLetter%';
    