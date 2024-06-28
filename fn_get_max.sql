create or replace function fn_get_max(x number,y number,z number)
return number
as 
v_max number;
begin
	with tab as (select x as val from dual
		     union all
		     select y from dual
		     union all
		     select z from dual)
	select max(val) into v_max from tab;

	return v_max;
end;