create or replace procedure sp_bams_dly_trn_insr(
                                            p_ac_id number,
                                            p_tran_id number,
                                            p_amt number,
                                            p_tran_date timestamp,
                                            p_desc varchar2
                                            )
                                            
as

begin
    insert into BAMS_daly_tran_detl(transaction_id ,account_id ,transaction_type_id,amount ,transaction_date ,description )
                                    values(seq_transaction_id.nextval ,p_ac_id,p_tran_id,p_amt,p_tran_date,p_desc);
      
       if p_tran_id in('%','$','!','@','#','$','%','^','&','*') then
            raise_application_error(-20698, 'YOUR ENTERED NUMBER IS INVALID'); 
        end if;
                                    
    exception
         when value_error then
         dbms_output.put_line('value_error: Incorrect DataTypes Expected Number but received varchar2'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);
         when others then
         sp_error_log('sp_bams_dly_trn_insr',sysdate,p_desc,sqlerrm,p_tran_id);
end;

