declare
	subtype name IS char(20);
	subtype message IS varchar2(100);
	salutation name;
	greetings message;
begin
	salutation := 'Reader ';
	greetings := 'Welcome to the world of PL/SQL';
	dbms_output.put_line('Hello '||salutation||greetings);
end;
/