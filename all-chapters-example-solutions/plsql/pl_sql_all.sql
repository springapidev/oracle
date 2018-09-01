/*----------------Important-------------------*/
show severoutput;
set set severoutput on;
/*----------------Important-------------------*/

/*############################################*/

/*-----------------Page 15--------------------*/
declare
	message varchar2(20) := 'Hello World';
begin
	dbms_output.put_line(message);
end;
/
/*-----------------Page 15--------------------*/

/*############################################*/

/*-----------------Page 21--------------------*/
declare
	subtype name IS char(20);
	subtype message IS varchar2(100);
	salutation name;
	greetings message;
begin
	salutation := 'Reader ';
	greetings := 'Welcome to the world of PL/SQL';
	dbms_output.put_line('Hello '||salutation||greetings);
end;
/
/*-----------------Page 21--------------------*/

/*############################################*/

/*-----------------Page 23--------------------*/
declare
	a integer := 10;
	b integer := 20;
	c integer;
	f real;
begin
	c := a+b;
	dbms_output.put_line('Value of c: '||c);
	f := 70.0/3.0;
	dbms_output.put_line('Value of f: '||f);
end;
/
/*-----------------Page 23--------------------*/

/*############################################*/

/*-----------------Page 24--------------------*/
declare
	num1 number := 95;
	num2 number := 85;
begin
	dbms_output.put_line('Outer Variable num1: '||num1);
	dbms_output.put_line('Outer Variable num2: '||num2);

	declare
		num1 number := 195;
		num2 number := 185;
	begin
		dbms_output.put_line('Inner Variable num1: '||num1);
		dbms_output.put_line('Inner Variable num2: '||num2);
	end;
end;
/
/*-----------------Page 24--------------------*/

/*############################################*/

/*-----------------Page 24--------------------*/
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

/*-----------------Page 24--------------------*/

/*############################################*/

/*-----------------Page 26--------------------*/
declare
	pi constant number := 3.141592654;
	radius number(5,2);
	dia number(5,2);
	circumference number(7,2);
	area number(10,2);
begin
	radius := 9.5;
	dia := radius*2;
	circumference := 2.0*pi*radius;
	area := pi*radius*radius;
	
	dbms_output.put_line('Radius: '||radius);
	dbms_output.put_line('Diameter: '||dia);
	dbms_output.put_line('Circumference: '||circumference);
	dbms_output.put_line('Area: '||area);
end;
/
/*-----------------Page 26--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
declare
	message varchar2(50) := 'That''s Md. Shamim Sarker.';
begin
	dbms_output.put_line(message);
end;
/
/*-----------------Page 27--------------------*/

/*############################################*/

/*-----------------Page 29--------------------*/
begin
	dbms_output.put_line('The add is: '||(10+5));
	dbms_output.put_line('The subtract is: '||(10-5));
	dbms_output.put_line('The multiplication is: '||(10*5));
	dbms_output.put_line('The division is: '||(10/5));
	dbms_output.put_line('The exponetial is: '||(10**5));
end;
/
/*-----------------Page 29--------------------*/

/*############################################*/

/*-----------------Page 29--------------------*/
declare
	a number(2) := 21;
	b number(2) := 10;
begin
	if(a=b) then dbms_output.put_line('Line 1: a is equal to b');
	else dbms_output.put_line('Line 1: a is not equal to b');
	end if;
	
	if(a!=b) then dbms_output.put_line('Line 2: a is not equal to b');
	else dbms_output.put_line('Line 2: a is equal to b');
	end if;
	
	if(a<>b) then dbms_output.put_line('Line 3: a is not equal to b');
	else dbms_output.put_line('Line 3: a is equal to b');
	end if;
	
	if(a~=b) then dbms_output.put_line('Line 4: a is not equal to b');
	else dbms_output.put_line('Line 4: a is equal to b');
	end if;
	
	if(a>b) then dbms_output.put_line('Line 5: a is greater than b');
	else dbms_output.put_line('Line 5: a is not greater than b');
	end if;
	
	if(a<b) then dbms_output.put_line('Line 6: a is less than b');
	else dbms_output.put_line('Line 6: a is not less than b');
	end if;
	
	if(a>=b) then dbms_output.put_line('Line 7: a is greater or equal to b');
	else dbms_output.put_line('Line 7: a is not greater or equal to b');
	end if;
	
	if(a<=b) then dbms_output.put_line('Line 8: a is less or equal to b');
	else dbms_output.put_line('Line 8: a is not less or equal to b');
	end if;	
end;
/
/*-----------------Page 29--------------------*/

/*############################################*/

/*-----------------Page 31--------------------*/
declare
	procedure compare (value varchar2, pattern varchar2) is
begin
	if value like pattern then
		dbms_output.put_line('True');
	else
		dbms_output.put_line('False');
	end if;
end;

begin
	compare('Zara Ali', 'Z%A_i');
	compare('Nuha Ali', 'Z%A_i');
end;
/
/*-----------------Page 31--------------------*/

/*############################################*/

/*-----------------Page 31--------------------*/
declare
	x number(2) := 10;
begin
	if (x between 5 and 20) then
		dbms_output.put_line('True');
	else
		dbms_output.put_line('False');
	end if;
	
	if (x between 11 and 20) then
		dbms_output.put_line('True');
	else
		dbms_output.put_line('False');
	end if;
end;
/
/*-----------------Page 31--------------------*/

/*############################################*/

/*-----------------Page 32--------------------*/
declare
	letter varchar2(1) := 'm';
begin
	if(letter in ('a', 'b', 'c')) then
		dbms_output.put_line('True');
	else
		dbms_output.put_line('False');
	end if;
	
	if(letter in ('m', 'n', 'o')) then
		dbms_output.put_line('True');
	else
		dbms_output.put_line('False');
	end if;
	
	if(letter is null) then
		dbms_output.put_line('True');
	else
		dbms_output.put_line('False');
	end if;
end;
/	
/*-----------------Page 32--------------------*/

/*############################################*/

/*-----------------Page 33--------------------*/
declare
	a boolean := true;
	b boolean := false;
begin
	if(a and b) then 
		dbms_output.put_line('Line 1: Condition is true.');
	end if;
	
	if(a or b) then 
		dbms_output.put_line('Line 2: Condition is true.');
	end if;
	
	if(not a) then
		dbms_output.put_line('Line 3: a is not true.');
	else
		dbms_output.put_line('Line 3: a is true.');
	end if;
		
	if(not b) then
		dbms_output.put_line('Line 4: b is not true.');
	else
		dbms_output.put_line('Line 4: b is true.');
	end if;
end;
/
/*-----------------Page 33--------------------*/

/*############################################*/

/*-----------------Page 34--------------------*/
declare
	a number(2) := 20;
	b number(2) := 10;
	c number(2) := 15;
	d number(2) := 5;
	e number(2);
begin
	e := (a+b) * c / d;
	dbms_output.put_line('Value of (a+b) * c/d: '|| e);
	
	e := ((a+b) * c) / d;
	dbms_output.put_line('Value of ((a+b) * c) / d: '|| e);
	
	e := (a+b) * (c/d);
	dbms_output.put_line('Value of (a+b) * (c/d): '|| e);
	
	e := a+(b * c)/d;
	dbms_output.put_line('Value of a+(b * c)/d: '|| e);
end;
/
/*-----------------Page 34--------------------*/

/*############################################*/

/*-----------------Page 37--------------------*/
declare
	a number(2) := 10;
begin
	a := 10;
	if(a<20) then
		dbms_output.put_line('a is less than 20');
	end if;
		dbms_output.put_line('value of a is: '||a);
end;
/
/*-----------------Page 37--------------------*/

/*############################################*/

/*-----------------Page 37--------------------*/
declare
	c_id customers.id%type := 2;
	c_sal customers.salary%type;
begin
	select salary
	into c_sal
	from customers
	where id = c_id;
	if(c_sal <= 2000) then
		update customers
		set salary = salary + 1000
			where id = c_id;
		dbms_output.put_line('Salary updated');
	end if;
end;
/
/*-----------------Page 37--------------------*/

/*############################################*/

/*-----------------Page 39--------------------*/
 declare
    a number(3) := 100;
 begin
    if (a<20) then
        dbms_output.put_line('a is less than 20');
    else
        dbms_output.put_line('a is not less than 20');
    end if;
    dbms_output.put_line('value of a is: '||a);
 end;
 /
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
declare
	a number(3) := 100;
begin
	if (a = 10) then
		dbms_output.put_line('Value of a is 10');
	elsif (a = 20) then
		dbms_output.put_line('Value of a is 20');
	elsif (a = 30) then
		dbms_output.put_line('Value of a is 30');
	else 
		dbms_output.put_line('None of the values is matching');
	end if;
	dbms_output.put_line('Exact value of a is: '|| a);
end;
/
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 41--------------------*/
declare
	grade char(1) := '&Grade';
begin
	case grade
		when 'A' then dbms_output.put_line('Excellent');
		when 'B' then dbms_output.put_line('Very good');
		when 'C' then dbms_output.put_line('Well done');
		when 'D' then dbms_output.put_line('You passed');
		when 'F' then dbms_output.put_line('No problem try agein');
		else dbms_output.put_line('No such grade');
	end case;
end;
/
/*-----------------Page 41--------------------*/

/*############################################*/

/*-----------------Page 42--------------------*/
declare
	grade char(1) := '&Grade';
begin
	case
		when grade = 'A' then dbms_output.put_line('Excellent');
		when grade = 'B' then dbms_output.put_line('Very good');
		when grade = 'C' then dbms_output.put_line('Well done');
		when grade = 'D' then dbms_output.put_line('You passed');
		when grade = 'F' then dbms_output.put_line('No problem try agein');
		else dbms_output.put_line('No such grade');
	end case;
end;
/
/*-----------------Page 42--------------------*/

/*############################################*/

/*-----------------Page 43--------------------*/
declare
	a number(3) := 100;
	b number(3) := 200;
begin
	if(a=100) then
		if(b=200) then 
			dbms_output.put_line('Value of a is 100 and b is 200');
		end if;
	end if;
	dbms_output.put_line('Exact value of a is: '||a);
	dbms_output.put_line('Exact value of b is: '||b);
end;
/
	
/*-----------------Page 43--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
/*-----------------Page 39--------------------*/

/*############################################*/

/*-----------------Page 27--------------------*/
