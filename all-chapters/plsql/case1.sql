declare
	grade char(1) := '&Grade';
begin
	case grade
		when 'A' then dbms_output.put_line('Excellent');
		when 'B' then dbms_output.put_line('Very good');
		when 'C' then dbms_output.put_line('Well done');
		when 'D' then dbms_output.put_line('You passed');
		when 'F' then dbms_output.put_line('No problem try agein');
		else dbms_output.put_line('No such grade');
	end case;
end;
/