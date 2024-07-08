create or replace  procedure sp_ins_head_ofsc_detl(
                                                    p_name in BAMS_Head_Ofsc_Detl.name%type,
                                                    p_addr in BAMS_Head_Ofsc_Detl.address%type,
                                                    p_phon_num in BAMS_Head_Ofsc_Detl.phone_number%type,
                                                    p_email in BAMS_Head_Ofsc_Detl.email%type,
                                                    p_est_date in BAMS_Head_Ofsc_Detl.established_date%type)
as
v_err_msg varchar2(4000);
v_err_code varchar2(100);
begin
    insert into BAMS_Head_Ofsc_Detl(head_office_id, name, address, phone_number, email, established_date)
    values (seq_hofc_id.nextval, p_name,p_addr,p_phon_num,p_email,p_est_date);
    
    insert into BAMS_Head_Ofsc_Detl(head_office_id, name, address, phone_number, email, established_date) 
    values(seq_hofc_id.nextval, p_name,p_addr,p_phon_num,p_email,p_est_date)
    log errors into  ERR$_BAMS_Head_Ofsc_Detl('Insert Error') reject limit unlimited;

    exception
    when DUP_VAL_ON_INDEX then
    dbms_output.put_line('DUP_VAL_ON_INDEX:Duplicates are not allowed'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);
    rollback;
    when INVALID_NUMBER then
    dbms_output.put_line('INVALID_NUMBER:Conversion of character string to number failed'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);
    when PROGRAM_ERROR then
    dbms_output.put_line('DUP_VAL_ON_INDEX:Duplicates are not allowed'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);
    when others then
    v_err_msg := substr(sqlerrm,1,3999);
    v_err_code := sqlcode;
    dbms_output.put_line('Error in sp_ins_head_ofsc_detl '||v_err_code||' '||v_err_msg||dbms_utility.format_error_backtrace);
end;
