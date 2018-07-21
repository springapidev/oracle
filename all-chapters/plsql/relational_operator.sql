declare
	a number(2) := 21;
	b number(2) := 10;
begin
	if(a=b) then dbms_output.put_line('Line 1: a is equal to b');
	else dbms_output.put_line('Line 1: a is not equal to b');
	end if;
	
	if(a!=b) then dbms_output.put_line('Line 2: a is not equal to b');
	else dbms_output.put_line('Line 2: a is equal to b');
	end if;
	
	if(a<>b) then dbms_output.put_line('Line 3: a is not equal to b');
	else dbms_output.put_line('Line 3: a is equal to b');
	end if;
	
	if(a~=b) then dbms_output.put_line('Line 4: a is not equal to b');
	else dbms_output.put_line('Line 4: a is equal to b');
	end if;
	
	if(a>b) then dbms_output.put_line('Line 5: a is greater than b');
	else dbms_output.put_line('Line 5: a is not greater than b');
	end if;
	
	if(a<b) then dbms_output.put_line('Line 6: a is less than b');
	else dbms_output.put_line('Line 6: a is not less than b');
	end if;
	
	if(a>=b) then dbms_output.put_line('Line 7: a is greater or equal to b');
	else dbms_output.put_line('Line 7: a is not greater or equal to b');
	end if;
	
	if(a<=b) then dbms_output.put_line('Line 8: a is less or equal to b');
	else dbms_output.put_line('Line 8: a is not less or equal to b');
	end if;	
end;
/