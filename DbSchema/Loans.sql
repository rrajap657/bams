-- Enable REM and SET commands
REM INSERTING 
SET DEFINE OFF;

-- BA-12 -- Create Table Loans  AND  Table Name:BAMS_Cust_Loan_Detl 

create table BAMS_Cust_Loan_Detl( loan_id NUMBER(12),
                                  customer_id  NUMBER(10) not null,
                                  loan_type_id  NUMBER(4) not null,
                                  amount  NUMBER(12,2),
                                  start_date  DATE not null,
                                  end_date  DATE not null,
                                  status  VARCHAR2(20) not null,
                                  constraint pk_loan_id primary key(loan_id),
                                  constraint fk_customer_id foreign key(customer_id) references bams_cust_detl_tabl(customer_id),
                                  constraint fk_loan_type_id foreign key(loan_type_id) references BAMS_Loan_Type_Detl(loan_type_id),
                                  constraint ck_status check(status in('active', 'paid', 'defaulted'))
                                  );
                                  
                                  
  -- Create sequence for loan_id
CREATE SEQUENCE seq_loan_id START WITH 1 INCREMENT BY 1 MAXVALUE 999999999999;

-- Add Comments to Table and Columns
/
COMMENT ON TABLE BAMS_Cust_Loan_Detl IS 'Table to manage information about loans provided to customer';
/
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.loan_id IS 'A unique identifier for each loan';
/
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.customer_id IS 'A foreign key that references the customer_id in the Customers table';
/
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.loan_type_id  IS 'A foreign key that references the loan_type_id in the LoanTypes table';
/
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.amount IS 'The amount of the loan';
/
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.start_date IS 'The date when the loan starts';
/
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.end_date IS 'The date when the loan is expected to be fully repaid';
/
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.status IS 'The status of the loan, which can be 'active', 'paid', or 'defaulted';
/

-- End of Creating Loans Table                               
                                 
