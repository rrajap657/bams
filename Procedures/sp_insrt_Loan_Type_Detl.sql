create or replace  procedure sp_insrt_Loan_Type_Detl(
                                                       
                                                    p_type_name         varchar2, 
                                                    p_description       varchar2, 
                                                    p_min_credit_score  number, 
                                                    p_interest_rate     number)
as

begin
        insert into BAMS_Loan_Type_Detl( loan_type_id,type_name,description,min_credit_score,interest_rate)
             values(seq_loan_type_id.nextval, p_type_name,p_description,p_min_credit_score,p_interest_rate);

        if p_min_credit_score < 500 then
        raise_application_error(-20666,'we cannot provide credit score less than 500');
        end if;

     exception
          when value_error then
          dbms_output.put_line('Error in p_min_credit_score'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);   
          when others then
          sp_error_log('sp_insrt_Loan_Type_Detl',sysdate,p_type_name,p_description,p_min_credit_score);

end;