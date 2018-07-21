declare
	num1 number := 95;
	num2 number := 85;
begin
	dbms_output.put_line('Outer Variable num1: '||num1);
	dbms_output.put_line('Outer Variable num2: '||num2);

	declare
		num1 number := 195;
		num2 number := 185;
	begin
		dbms_output.put_line('Inner Variable num1: '||num1);
		dbms_output.put_line('Inner Variable num2: '||num2);
	end;
end;
/