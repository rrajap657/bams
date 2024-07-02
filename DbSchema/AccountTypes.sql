REM INSERTING 
SET DEFINE OFF;

--BA-7---AccountTypes Table
create table BAMS_Acct_Type_Detl( account_type_id  NUMBER(4),
                                type_name VARCHAR2(50) not null,
                                description  VARCHAR2(200),
                                 interest_rate  NUMBER(5,2) not null,
                                 CONSTRAINT pk_acc_id PRIMARY KEY (account_type_id));
                                 
create sequence seq_account_type_id start with 1 increment by 1 maxvalue 9999;
/
COMMENT ON COLUMN  BAMS_Acct_Type_Detl. account_type_id  IS 'A unique identifier for each account type';
/
COMMENT ON COLUMN  BAMS_Acct_Type_Detl.type_name  IS 'The name of the account type';
/
COMMENT ON COLUMN  BAMS_Acct_Type_Detl.description IS 'A description of the account type';
/
COMMENT ON COLUMN  BAMS_Acct_Type_Detl.interest_rate IS 'The interest rate associated with the account type';
/

-- End of Creating AccountTypes Table 

