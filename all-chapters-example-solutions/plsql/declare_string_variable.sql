declare
	name varchar2(20);
	company varchar2(30);
	introduction clob;
	choice char(1);
begin
	name := 'John Smith';
	company := 'Infotech';
	introduction := 'Hello! I''m John Smith from Infotech.';
	choice := '&choice';
	if choice = 'y' then
		dbms_output.put_line(name);
		dbms_output.put_line(company);
		dbms_output.put_line(introduction);
	end if;
end;
/