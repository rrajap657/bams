create or replace function fn_get_comm(p_empid number)
return number
as 
v_comm_pct number;
begin
	select e.commission_pct into v_comm_pct
	from employees e 
	where e.employee_id = p_empid;

	return v_comm_pct;
end;