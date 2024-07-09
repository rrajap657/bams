create or replace procedure sp_bams_cust_acc_insrt(
                                         p_cust_id number,
                                         p_ac_ty_id number,
                                         p_ac_no varchar2,
                                         p_bal number,
                                         p_op_date date,
                                         p_status varchar2,
                                         p_br_id number
                                         )

as

begin
insert into BAMS_Cust_Acct_Detl(account_id,customer_id,account_type_id,account_number,balance,opening_date,status,branch_id)
                values(seq_account_id.nextval , p_cust_id , p_ac_ty_id , p_ac_no , p_bal , p_op_date , p_status , p_br_id);


        if p_status NOT in('active', 'inactive') then
            raise_application_error(-20669, 'YOUR ENTERED STATUS IS INVALID'); 
        end if;
        
        if p_ac_ty_id in('%','$','!','@','#','$','%','^','&','*') then
            raise_application_error(-20568, 'YOUR ENTERED NUMBER IS INVALID'); 
        end if;

    exception
         when value_error then
         dbms_output.put_line('value_error: Incorrect DataTypes Expected Number but received varchar2'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);
         when others then
         sp_error_log('sp_bams_insrt_empl_detl',sysdate,p_ac_no,p_status,p_ac_ty_id);
end;