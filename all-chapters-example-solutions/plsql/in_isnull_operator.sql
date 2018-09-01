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