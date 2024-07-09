create or replace procedure sp_bams_insrt_bran_detl(
                                                   
                                                    p_branch_name    VARCHAR2,
                                                    p_address        VARCHAR2,
                                                    p_phone_number   VARCHAR2,
                                                    p_state_id       NUMBER,
                                                    p_zone_id        NUMBER,
                                                    p_head_office_id  NUMBER)
as

begin
  
    
    insert into bams_bran_detl_tabl( branch_id,branch_name,address,phone_number,state_id,zone_id,head_office_id)
    values(seq_branch_id.nextval,p_branch_name,p_address,p_phone_number,p_state_id,p_zone_id,p_head_office_id);
    
    if p_branch_name in('!','@','#','$','%','^','&','*') then
      raise_application_error(-20133,'entered parameter is incorrect');
     end if;
    
    exception
         when value_error then
         dbms_output.put_line('value_error: Incorrect DataTypes Expected Number but received varchar2'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);
         when others then
         sp_error_log('sp_bams_insrt_bran_detl',sysdate,p_branch_name,p_address,p_phone_number);

end;

