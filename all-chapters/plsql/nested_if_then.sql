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