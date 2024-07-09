create or replace procedure sp_bams_insrt_empl_detl (
                                                    p_first_name     VARCHAR2,
                                                    p_last_name      VARCHAR2,
                                                    p_position       VARCHAR2,
                                                    p_hire_date      DATE,
                                                    p_branch_id      NUMBER,
                                                    p_head_office_id NUMBER)
as


begin
    
    insert into bams_empl_detl_tabl( employee_id,first_name,last_name,position,hire_date, branch_id,head_office_id)
     values (seq_employee_id.nextval,p_first_name,p_last_name,p_position,p_hire_date, p_branch_id,p_head_office_id);
    
    if p_first_name in('!','@','#','$','%','^','&','*') then
      raise_application_error(-20156,'entered parameter is incorrect');
     end if;
     
     if to_char(p_hire_date)in ('YYYY-MM-DD') then
            raise_application_error(-20777, 'You can''t enter date format like that instead you can give DD-MM-YY Format'); 
     end if;
    
    exception
         when value_error then
         dbms_output.put_line('value_error: Incorrect DataTypes Expected Number but received varchar2'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);
         when others then
         sp_error_log('sp_bams_insrt_empl_detl',sysdate,p_first_name,p_last_name,p_branch_id);
end;