declare
	a boolean := true;
	b boolean := false;
begin
	if(a and b) then 
		dbms_output.put_line('Line 1: Condition is true.');
	end if;
	
	if(a or b) then 
		dbms_output.put_line('Line 2: Condition is true.');
	end if;
	
	if(not a) then
		dbms_output.put_line('Line 3: a is not true.');
	else
		dbms_output.put_line('Line 3: a is true.');
	end if;
		
	if(not b) then
		dbms_output.put_line('Line 4: b is not true.');
	else
		dbms_output.put_line('Line 4: b is true.');
	end if;
end;
/