declare
	a number(2) := 20;
	b number(2) := 10;
	c number(2) := 15;
	d number(2) := 5;
	e number(2);
begin
	e := (a+b) * c / d;
	dbms_output.put_line('Value of (a+b) * c/d: '|| e);
	
	e := ((a+b) * c) / d;
	dbms_output.put_line('Value of ((a+b) * c) / d: '|| e);
	
	e := (a+b) * (c/d);
	dbms_output.put_line('Value of (a+b) * (c/d): '|| e);
	
	e := a+(b * c)/d;
	dbms_output.put_line('Value of a+(b * c)/d: '|| e);
end;
/