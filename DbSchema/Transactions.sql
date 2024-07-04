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


 -- Create sequence for transaction_id
CREATE SEQUENCE seq_transaction_id START WITH 1 INCREMENT BY 1 MAXVALUE 99999999999999;

/
COMMENT ON COLUMN BAMS_daly_tran_detl.transaction_id IS 'A unique identifier for each transaction';
/
COMMENT ON COLUMN BAMS_daly_tran_detl.account_id IS 'A foreign key that references the account_id in the Accounts table';
/
COMMENT ON COLUMN BAMS_daly_tran_detl.transaction_type_id  IS 'A foreign key that references the transaction_type_id in the TransactionTypes table';
/
COMMENT ON COLUMN BAMS_daly_tran_detl.amount IS 'The amount of the transaction.';
/
COMMENT ON COLUMN BAMS_daly_tran_detl.transaction_date IS 'The date and time when the transaction occurred';
/
COMMENT ON COLUMN BAMS_daly_tran_detl.description IS 'A description of the transaction';
/

-- End of Creating Transactions Table
