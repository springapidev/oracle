declare
	a number(2);
begin
	a := 10;
	if(a<20) then
		dbms_output.put_line('a is less than 20');
	end if;
		dbms_output.put_line('value of a is: '||a);
end;
/