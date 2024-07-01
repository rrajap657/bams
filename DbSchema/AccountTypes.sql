REM INSERTING 
SET DEFINE OFF;

--BA-7---AccountTypes Table
create table BAMS_Acct_Type_Detl( account_type_id  NUMBER(4),
                                type_name VARCHAR2(50) not null,
                                description  VARCHAR2(200),
                                 interest_rate  NUMBER(5,2) not null,
                                 CONSTRAINT pk_acc_id PRIMARY KEY (account_type_id));
                                 
create sequence seq_account_type_id start with 1 increment by 1 maxvalue 9999;

 select * from BAMS_Acct_Type_Detl;
drop table  BAMS_Acct_Type_Detl;