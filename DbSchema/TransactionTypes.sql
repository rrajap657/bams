REM INSERTING 
SET DEFINE OFF;


--BA-9---TransactionTypes Table

create table bams_Tran_Type_Detl(transaction_type_id  NUMBER(4),
                                type_name  VARCHAR2(50) not null,
                                description VARCHAR2(200),
                                CONSTRAINT pk_tran_id PRIMARY KEY (transaction_type_id));   

create sequence seq_transaction_type_id start with 1 increment by 1 maxvalue 9999;