create or replace  procedure sp_insrt_ATMs_detl_tabl(
                                                   p_location varchar2,
                                                   p_branch_id number,
                                                   p_head_office_id number,
                                                   p_status varchar2)
                                                   
as

begin

    insert into BAMS_ATMs_detl_tabl(atm_id,location,branch_id,head_office_id,status)
    values(seq_atm_id.nextval,p_location,p_branch_id,p_head_office_id,p_status);

     if p_status NOT in('active', 'inactive', 'maintenance') then
                    raise_application_error(-20123, 'YOUR ENTERED STATUS IS INVALID'); 
                end if;

     exception
          when value_error then
            dbms_output.put_line('Error in p_loan_type_id'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);   
          when others then
            sp_error_log('sp_insrt_Cust_Docm_Detl',sysdate,p_location,p_status,p_branch_id);

end;