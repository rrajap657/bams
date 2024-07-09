create or replace  procedure sp_insrt_Cust_Crcd_Detl(   
                                            
                                                    p_customer_id      number,
                                                    p_card_type_id     number,
                                                    p_card_number      varchar2, 
                                                    p_expiration_date  date,   
                                                    p_cvv              varchar2,
                                                    p_credit_limit     number,
                                                    p_current_balance  number, 
                                                    p_issue_date       date, 
                                                    p_status           varchar2)
as

begin
        insert into BAMS_Cust_Crcd_Detl( card_id ,customer_id ,card_type_id ,card_number ,expiration_date ,cvv ,credit_limit ,current_balance ,issue_date ,status)       
            values(seq_card_id.nextval, p_customer_id ,p_card_type_id ,p_card_number ,p_expiration_date ,p_cvv ,p_credit_limit ,p_current_balance ,p_issue_date ,p_status);

         if length(p_cvv)>3 then
              raise_application_error(-20887,'entered parameter is incorrect');
         end if;

        if p_cvv in('!','@','#','$','%','^','&','*') then
            raise_application_error(-20788,'entered parameter is incorrect');
        end if;
 exception
          when value_error then
          dbms_output.put_line('Error in p_card_type_id'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);   
          when others then
          sp_error_log('sp_insrt_Cust_Crcd_Detl',sysdate,p_card_number,p_cvv,p_card_type_id);

end;