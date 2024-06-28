declare
begin
	for i in 1..100 loop
		dbms_output.put_line('value is 'i);
	end loop;
end;