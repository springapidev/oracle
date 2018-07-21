declare
	a number(2) := 10;
begin
	while a < 20 loop
		dbms_output.put_line('Value of a: '||a);
		a := a+1;
	exit when a > 15;
	end loop;
end;
/