

create or replace procedure sp_bams_states_detl_tabl(
                                                     s_state_name     VARCHAR2,
                                                     s_state_code     VARCHAR2,
                                                     s_head_office_id NUMBER)
as
begin
    
    insert into bams_states_detl_tabl (state_id,state_name,state_code,head_office_id)
    values(seq_state_id.nextval,s_state_name,s_state_code,s_head_office_id);
    
     exception
     when value_error then
     dbms_output.put_line('value_error: Incorrect DataTypes Expected Number but received varchar2'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);
     when others then
     dbms_output.put_line('others_error:in state_name only enters numbers'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);

end;