create or replace procedure sp_bams_insrt_states_detl(
                                                     p_state_name     VARCHAR2,
                                                     p_state_code     VARCHAR2,
                                                     p_head_office_id NUMBER)
as
begin
    
    insert into bams_states_detl_tabl (state_id,state_name,state_code,head_office_id)
    values(seq_state_id.nextval,p_state_name,p_state_code,p_head_office_id);
    
     if p_state_name in('!','@','#','$','%','^','&','*') then
      raise_application_error(-20199,'entered parameter is incorrect');
     end if;
     
     exception
     when value_error then
     dbms_output.put_line('value_error: Incorrect DataTypes Expected Number but received varchar2'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);
     when others then
     sp_error_log('sp_bams_insrt_states_detl',sysdate,p_state_name,p_state_code,p_head_office_id);

end;p