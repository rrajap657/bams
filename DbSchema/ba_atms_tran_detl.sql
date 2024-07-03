CREATE TABLE bams_atms_tran_detl (
    atm_transaction_id NUMBER(16),
    atm_id             NUMBER(6),
    account_id         NUMBER(12),
    transaction_type   VARCHAR2(20),--(e.g., withdrawal, deposit).
    amount             NUMBER(8, 2),
    transaction_date   TIMESTAMP,
    CONSTRAINT pk_tran_id PRIMARY KEY ( atm_transaction_id )
);

CREATE SEQUENCE seq_atm_transaction_id START WITH 1 INCREMENT BY 1 MAXVALUE 999999999999;

ALTER TABLE bams_atms_tran_detl
    ADD CONSTRAINT fk_atm_id FOREIGN KEY ( atm_id )
        REFERENCES bams_atms_detl_tabl ( atm_id );

ALTER TABLE bams_atms_tran_detl
    ADD CONSTRAINT fk_ac_id FOREIGN KEY ( account_id )
        REFERENCES bams_cust_acct_detl ( account_id );
        

/
COMMENT ON COLUMN bams_atms_tran_detl.atm_transaction_id IS 'A unique identifier for each ATM transaction.';
/
COMMENT ON COLUMN bams_atms_tran_detl.atm_id IS 'A unique identifier for each ATM transaction.';
/
COMMENT ON COLUMN bams_atms_tran_detl.account_id IS 'A unique identifier for each ATM transaction.';
/
COMMENT ON COLUMN bams_atms_tran_detl.transaction_type IS 'A unique identifier for each ATM transaction.';
/
COMMENT ON COLUMN bams_atms_tran_detl.amount IS 'A unique identifier for each ATM transaction.';
/
COMMENT ON COLUMN bams_atms_tran_detl.transaction_date IS 'A unique identifier for each ATM transaction.';
/

--End of ATM trancsaction table