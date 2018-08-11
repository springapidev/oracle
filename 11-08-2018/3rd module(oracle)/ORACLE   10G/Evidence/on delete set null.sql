alter table sales
drop constraints sales_pid_fk;

alter table sales
add constraints sales_pid_fk foreign key(pid) references product(pid) on delete set null;





