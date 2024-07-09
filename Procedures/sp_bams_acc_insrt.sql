create or replace procedure sp_bams_acc_insrt(
                                         p_ty_name varchar2,
                                         p_desc varchar2,
                                         p_int_rate number
                                         )

as

begin
insert into BAMS_Acct_Type_Detl(account_type_id,type_name,description,interest_rate)
                                values(seq_account_type_id.nextval,p_ty_name,p_desc,p_int_rate);

        if p_int_rate in('%','$','!','@','#','$','%','^','&','*') then
            raise_application_error(-20158, 'YOUR ENTERED RATE IS INVALID'); 
        end if;
    
    exception
         when value_error then
         dbms_output.put_line('value_error: Incorrect DataTypes Expected Number but received varchar2'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);
         when others then
         sp_error_log('sp_bams_acc_insrt',sysdate,p_ty_name,p_desc,p_int_rate);
end;