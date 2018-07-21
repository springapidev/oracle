declare
    greetings varchar2(30) := '.........Hello World.........';
begin
    dbms_output.put_line(rtrim(greetings, '.'));
    dbms_output.put_line(ltrim(greetings, '.'));
    dbms_output.put_line(trim('.' from greetings));
end;
/