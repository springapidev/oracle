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