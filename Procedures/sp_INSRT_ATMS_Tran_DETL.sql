create or replace  procedure sp_INSRT_ATMS_Tran_DETL(
                                                   p_atm_id number,
                                                   p_account_id number,
                                                   p_transaction_type varchar2,
                                                   p_amount number,
                                                   p_transaction_date timestamp)

as
begin

insert into BAMS_ATMS_Tran_DETL(atm_transaction_id,atm_id,account_id,transaction_type,amount,transaction_date)
values(seq_atm_transaction_id.nextval,p_atm_id,p_account_id,p_transaction_type,p_amount,p_transaction_date);

        if p_transaction_type NOT in('withdrawal', 'deposit') then
            raise_application_error(-20123, 'YOUR ENTERED STATUS IS INVALID'); 
        end if;
        
        if p_amount >100000 then 
            raise_application_error(-20336, 'YOUR MAX LIMIT IS REACHED'); 
        end if;        

     exception
          when value_error then
            dbms_output.put_line('Error in p_loan_type_id'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);   
          when others then
            sp_error_log('sp_INSRT_ATMS_Tran_DETL',sysdate,p_transaction_type,SQLERRM,p_amount);

end;