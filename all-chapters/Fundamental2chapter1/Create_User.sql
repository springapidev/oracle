connect system as sysdba; or
connect system/system;

create user bdmanager identified by bdmanager;

grant dba to bdmanager;

show user;

disconnect;

connect bdmanager/bdmanager;

create table st(st_id number(10), st_name varchar2(20));

insert into st(st_id, st_name) values(100, 'Shamim');

select * from st;

show user;

create user bdoperator identified by bdoperator;

grant create session to bdoperator;

grant select, insert on st to bdoperator with grant option;

show user;

disconnect;

connect bdoperator/bdoperator;

insert into bdmanager.st(st_id, st_name) values(101, 'Shahin');

select * from bdmanager.st;

disconnect;

connect bdmanager/bdmanager;

drop user bdoperator cascade;

disconnect;

connect system/system;

drop user bdmanager cascade;

disconnect;

exit;