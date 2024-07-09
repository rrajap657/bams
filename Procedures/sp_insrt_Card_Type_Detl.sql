create or replace procedure sp_insrt_Card_Type_Detl(   
                                                    p_type_name       varchar2, 
                                                    p_description     varchar2, 
                                                    p_annual_fee      number, 
                                                    p_reward_program  varchar2, 
                                                    p_interest_rate   number)
                                                    
as
begin

        insert into BAMS_Card_Type_Detl( card_type_id,type_name,description,annual_fee,reward_program,interest_rate )       
            values(seq_card_type_id.nextval, p_type_name,p_description,p_annual_fee,p_reward_program,p_interest_rate);

     exception
          when value_error then
          dbms_output.put_line('Error in p_loan_type_id'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);   
          when others then
          sp_error_log('sp_insrt_Card_Type_Detl',sysdate,p_type_name,p_description,p_annual_fee);

end;