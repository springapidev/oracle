declare
	x number := 100;
begin
	loop
		dbms_output.put_line('The number is: '||x);
		x := x+10;
		exit when x > 200;
	end loop;
	dbms_output.put_line('After Exit x is: '||x);
end;
/