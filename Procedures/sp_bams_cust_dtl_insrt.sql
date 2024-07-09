create or replace procedure sp_bams_cust_dtl_insrt(
                                         p_fname varchar2,
                                         p_lname varchar2,
                                         p_dob date,
                                         p_add varchar2,
                                         p_phno varchar2,
                                         p_email varchar2,
                                         p_ssn varchar2,
                                         p_st_id number,
                                         p_zn_id number,
                                         p_br_id number
                                         )

as

begin
    begin
    insert into bams_cust_detl_tabl (customer_id ,first_name,last_name,date_of_birth, address ,phone_number, email, ssn,state_id,zone_id ,branch_id)
                                values(seq_customer_id.nextval,p_fname,p_lname,p_dob,p_add,p_phno,p_email,p_ssn,p_st_id,p_zn_id,p_br_id);
         
          if p_fname in('%','$','!','@','#','$','%','^','&','*') then
            raise_application_error(-20778, 'YOUR ENTERED name IS INVALID'); 
        end if; 
        
         if p_lname in('%','$','!','@','#','$','%','^','&','*') then
            raise_application_error(-20887, 'YOUR ENTERED name IS INVALID'); 
        end if; 
         
    
    exception
         when value_error then
         dbms_output.put_line('value_error: Incorrect DataTypes Expected Number but received varchar2'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);
         when others then
         sp_error_log('sp_bams_cust_dtl_insrt',sysdate,p_fname,p_lname,p_st_id);
end;
end;