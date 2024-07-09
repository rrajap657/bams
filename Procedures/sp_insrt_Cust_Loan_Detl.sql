create or replace  procedure sp_insrt_Cust_Loan_Detl(
                                                   
                                                    p_customer_id  number,  
                                                    p_loan_type_id number ,  
                                                    p_amount       number,
                                                    p_start_date   date,         
                                                    p_end_date     date,         
                                                    p_status       varchar2 )
as

begin
        insert into BAMS_Cust_Loan_Detl( loan_id,customer_id,loan_type_id,amount,start_date,end_date,status)       
             values(seq_loan_id.nextval, p_customer_id,p_loan_type_id,p_amount,p_start_date,p_end_date,p_status);

          if p_status NOT in('active','paid', 'defaulted') then
                    raise_application_error(-20123, 'YOUR ENTERED STATUS IS INVALID'); 
          end if;

          if p_amount in('!','@','#','$','%','^','&','*') then
                    raise_application_error(-20556, 'You cant enter special characters instead give alphabets'); 
          end if;

          if to_char(p_start_date)in ('YYYY-MM-DD') then
                raise_application_error(-20444, 'You can''t enter date format like that instead you can give DD-MM-YY Format'); 
          end if;


          if to_char(p_end_date)in ('YYYY-MM-DD') then
                raise_application_error(-20444, 'You can''t enter date format like that instead you can give DD-MM-YY Format'); 
          end if;

    exception
          when value_error then
dbms_output.put_line('Error in p_loan_type_id'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);   
          when others then
          sp_error_log('sp_insrt_Cust_Loan_Detl',sysdate,p_status,sqlerrm,p_amount);

end;