declare
	a number(2) := 10;
begin
	<<loopstart>>
	while a < 20 loop
		dbms_output.put_line('Value of a: '||a);
		a := a+1;
		if a = 15 then
			a := a+1;
			goto loopstart;
		end if;
	end loop;
end;
/ 