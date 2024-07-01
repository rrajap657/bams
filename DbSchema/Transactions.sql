REM INSERTING 
SET DEFINE OFF;


--BA-10--Transactions Table Not Created

create table BAMS_daly_tran_detl(transaction_id  NUMBER(16),
                                account_id  NUMBER(12) not null,
                                 transaction_type_id  NUMBER(4) not null,
                                 amount  NUMBER(12,2),
                                 transaction_date  TIMESTAMP,
                                 description  VARCHAR2(200),     
                                CONSTRAINT pk_tra_id PRIMARY KEY (transaction_id),                                
                                constraint fk_ac_id foreign key (account_id) references Accounts(account_id),
                                constraint fk_tran_typ_id foreign key (transaction_type_id) references TransactionTypes(transaction_type_id));

select * from BAMS_daly_tran_detl;
