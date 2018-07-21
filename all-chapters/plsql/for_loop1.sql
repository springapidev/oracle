declare
	a number(2);
begin
	for counter in 10 .. 20 loop
		dbms_output.put_line('Value of a: '|| counter);
	end loop;
end;
/