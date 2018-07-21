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