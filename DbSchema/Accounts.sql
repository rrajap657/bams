REM INSERTING 
SET DEFINE OFF;

--BA-8-- Accounts table not created

create table BAMS_Cust_Acct_Detl(account_id  NUMBER(12),
                                customer_id NUMBER(10) not null,
                                account_type_id  NUMBER(4) not null,
                                account_number  VARCHAR2(20) not null,
                                balance  NUMBER(12,2) not null,
                                opening_date  DATE not null,
                                status  VARCHAR2(10) not null,
                                 branch_id  NUMBER(6) not null,
                                 CONSTRAINT pk_acc_id PRIMARY KEY (account_id),                         
                                constraint uk_acc_no unique(account_number),                         
                                constraint fk_cust_id foreign key (customer_id ) references Customers(customer_id),
                                constraint fk_acc_id foreign key (account_type_id ) references AccountTypes(account_type_id),
                                constraint ck_stat check(status in('active','inactive'))
			        );


create sequence seq_account_id start with 1 increment by 1 maxvalue 999999999999 ;
/
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.account_id IS 'A unique identifier for each account';
/
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.customer_idIS 'A foreign key that references the customer_id in the Customers table';
/
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.account_type_id  IS 'A foreign key that references the account_type_id in the AccountTypes table';
/
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.account_number IS 'A unique account number for the account';
/
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.balance IS 'The current balance of the account';
/
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.opening_date IS 'The date when the account was opened';
/
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.status IS 'The status of the account';
/
COMMENT ON COLUMN BAMS_Cust_Acct_Detl. branch_id IS 'A foreign key that references the branch_id in the Branches table';

/

-- End of Creating Accounts Table
