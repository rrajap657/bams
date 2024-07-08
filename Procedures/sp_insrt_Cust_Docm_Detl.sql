create or replace  procedure sp_insrt_Cust_Docm_Detl(
                                                   p_customer_id number,
                                                   p_document_type varchar2,
                                                   p_document_number varchar2,
                                                   p_issue_date date,
                                                   p_expiry_date date,
                                                   p_document_status varchar2)
                                                   
as


begin

    insert into BAMS_Cust_Docm_Detl(document_id,customer_id,document_type,document_number,issue_date,expiry_date,document_status)
    values(seq_document_id.nextval,p_customer_id,p_document_type,p_document_number,p_issue_date,p_expiry_date,p_document_status);
        
        if p_document_type not in ('passport', 'driver license')then
             raise_application_error(-20156, 'YOUR HAVE ENTERED WRONG DATA '); 
        end if;        
        
        if p_expiry_date <='31-12-2023' then
             raise_application_error(-20156, 'YOUR date IS expired'); 
        end if;       

        if p_document_status NOT in('valid', 'expired', 'pending') then
            raise_application_error(-20156, 'YOUR ENTERED STATUS IS INVALID'); 
        end if;

exception
          when value_error then
            dbms_output.put_line('Error in p_loan_type_id'||' '||sqlcode||' '||sqlerrm||' '||dbms_utility.format_error_backtrace);   
          when others then
            sp_error_log('sp_insrt_Cust_Docm_Detl',sysdate,p_document_type,p_document_status,p_customer_id);

end;