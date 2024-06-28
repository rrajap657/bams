create or replace function fn_get_max(x number,y number,z number)
return number
as 
v_max number;
begin
select greatest(x,y,z) into v_max from dual;
return v_max;
end;