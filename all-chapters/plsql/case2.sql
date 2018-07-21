declare
	grade char(1) := '&Grade';
begin
	case
		when grade = 'A' then dbms_output.put_line('Excellent');
		when grade = 'B' then dbms_output.put_line('Very good');
		when grade = 'C' then dbms_output.put_line('Well done');
		when grade = 'D' then dbms_output.put_line('You passed');
		when grade = 'F' then dbms_output.put_line('No problem try agein');
		else dbms_output.put_line('No such grade');
	end case;
end;
/