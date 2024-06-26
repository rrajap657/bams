create or replace function sf_getename (p1 in number)
return varchar2
as
v_name varchar2(30);
begin
	select ename into  v_name from employees
	where empid = p1;
return v_name;
end;