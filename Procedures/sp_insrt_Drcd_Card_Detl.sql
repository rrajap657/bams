create or replace  procedure sp_insrt_Drcd_Card_Detl(
                                                    p_account_id              number,   
                                                    p_card_type_id            number,   
                                                    p_card_number             varchar2, 
                                                    p_expiration_date         date,     
                                                    p_cvv                     varchar2,  
                                                    p_daily_withdrawal_limit  number,  
                                                    p_issue_date              date,     
                                                    p_status                  varchar2) 

as
begin
        insert into BAMS_Drcd_Card_Detl( debit_card_id,account_id ,card_type_id ,card_number,expiration_date,cvv,daily_withdrawal_limit,issue_date,status)      
            values(seq_card_id.nextval, p_account_id ,p_card_type_id ,p_card_number,p_expiration_date,p_cvv,p_daily_withdrawal_limit,p_issue_date,p_status);

        if p_status not in('active', 'inactive','blocked') then
              raise_application_error(-20553,'in-correct parameter');
         end if;

        if p_daily_withdrawal_limit >= 40000 then
              raise_application_error(-20553,'you have reachead max limit');
         end if;        

        if length(p_cvv)>3 then
              raise_application_error(-20887,'entered parameter is incorrect');
         end if;

        if p_cvv in('!','@','#','$','%','^','&','*') then
            raise_application_error(-20156,'entered parameter is incorrect');
        end if;
exception
         when value_error then
         dbms_output.put_line('value_error: Incorrect DataTypes Expected Number but received varchar2'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);
         when others then
         sp_error_log('sp_insrt_Drcd_Card_Detl',sysdate,p_card_number,p_status,p_account_id);
end;