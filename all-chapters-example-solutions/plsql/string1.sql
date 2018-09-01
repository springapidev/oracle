declare
	greetings varchar2(11) := 'heLlO woRlD';
begin
	dbms_output.put_line(upper(greetings));
	dbms_output.put_line(lower(greetings));
	dbms_output.put_line(upper(greetings));
	dbms_output.put_line(initcap(greetings));
    dbms_output.put_line(substr(greetings,2,4)); -- 1 is start and 3 is length
    dbms_output.put_line(instr(greetings, 'e'));
    dbms_output.put_line(length(greetings));
    dbms_output.put_line(ascii(greetings));
    dbms_output.put_line(concat(greetings, greetings));
end;
/