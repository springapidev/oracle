create table customers(
	id int not null,
	name varchar(20) not null,
	age int not null,
	address char(25),
	salary decimal(18,2),
	primary key (id)
);

insert into customers(id, name, age, address, salary)
values(1, 'Ramesh', 32, 'Ahmedabad', 2000.00);

insert into customers(id, name, age, address, salary)
values(2, 'Khilan', 25, 'Delhi', 1500.00);

insert into customers(id, name, age, address, salary)
values(3, 'Kaushik', 23, 'Kota', 2000.00);

insert into customers(id, name, age, address, salary)
values(4, 'Chaitali', 25, 'Mumbai', 6500.00);

insert into customers(id, name, age, address, salary)
values(5, 'Hardik', 27, 'Bhopal', 8500.00);

insert into customers(id, name, age, address, salary)
values(6, 'Komal', 22, 'MP', 4500.00);


declare
	c_id customers.id%type := 1;
	c_name customers.name%type;
	c_addr customers.address%type;
	c_sal customers.salary%type;
begin
	select name, address, salary into c_name, c_addr, c_sal
	from customers
	where id = c_id;
	
	dbms_output.put_line('Customer '||' from ' || c_addr || ' earns '|| c_sal);
end;
/