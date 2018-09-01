declare
	type namesarray is varray(10) of varchar2(10);
	type grades is varray(10) of integer;
	names namesarray;
	marks grades;
	total integer;
begin
	names := namesarray('Kavita', 'Pritam', 'Ayan', 'Rishav', 'Aziz', 'Shamim', 'Sarker', 'Shihab', 'Sharar', 'Shahin');
	marks := grades(98, 97, 78, 87, 92, 90, 85, 87, 88, 92);
	total := names.count;
	dbms_output.put_line('Total '||total||' Students');
	for i in 1 .. total loop
		dbms_output.put_line('Student name: '||names(i)||'. Marks: '||marks(i));
	end loop;
end;
/