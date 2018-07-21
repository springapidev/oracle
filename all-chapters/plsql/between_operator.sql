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