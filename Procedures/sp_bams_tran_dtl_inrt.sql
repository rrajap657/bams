create or replace procedure sp_bams_tran_dtl_inrt(
                                             p_typ_nam varchar2,
                                             p_desc varchar2
                                             )
                                             
as 
begin 
    insert into bams_Tran_Type_Detl(transaction_type_id  ,type_name  ,description)
                                values(seq_transaction_type_id.nextval,p_typ_nam,p_desc);


    exception
         when value_error then
         dbms_output.put_line('value_error: Incorrect DataTypes Expected Number but received varchar2'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);
         when others then
         sp_error_log('sp_bams_tran_dtl_inrt',sysdate,p_typ_nam,p_desc,sqlcode);
end;