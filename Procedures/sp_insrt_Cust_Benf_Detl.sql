create or replace  procedure sp_insrt_Cust_Benf_Detl(
                                                   p_account_id number,
                                                   p_name varchar2,
                                                   p_relationship varchar2,
                                                   p_percentage number
                                                   )
                                                   
                                                   
as 

begin
    insert into BAMS_Cust_Benf_Detl(beneficiary_id,account_id,name,relationship,percentage)
    values(seq_beneficiary_id.nextval,p_account_id,p_name,p_relationship,p_percentage);

        if  p_percentage in('%','$','!','@','#','$','%','^','&','*') then
            raise_application_error(-20888, 'YOUR ENTERED PERCENTAGE  IS INVALID'); 
        end if;

     exception
          when value_error then
            dbms_output.put_line('Error in p_percentage'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);   
          when others then
            sp_error_log('sp_insrt_Cust_Benf_Detl',sysdate,p_name,p_relationship,p_percentage);

end;


