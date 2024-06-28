create or replace function fn_get_emp_sal(p_empid in number)
return number
as
	v_sal employees.salary%type;
begin
	select e.salary 
	from employees e
	where e.employee_id = p_empid;
end;