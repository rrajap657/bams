CREATE TABLE bams_cust_benf_detl (
    beneficiary_id NUMBER(10),
    account_id     NUMBER(12),
    name           VARCHAR2(100) NOT NULL,
    relationship   VARCHAR2(50),
    percentage     NUMBER(5, 2) NOT NULL,
    CONSTRAINT pk_benf_id PRIMARY KEY ( beneficiary_id )
);

CREATE SEQUENCE seq_beneficiary_id START WITH 1 INCREMENT BY 1 MAXVALUE 9999999999;

ALTER TABLE bams_cust_benf_detl
    ADD CONSTRAINT fk_acc_id FOREIGN KEY ( account_id )
        REFERENCES bams_cust_acct_detl ( account_id );


/
COMMENT ON COLUMN BAMS_Cust_Benf_Detl.beneficiary_id IS 'A unique identifier for each beneficiary';
/
COMMENT ON COLUMN BAMS_Cust_Benf_Detl.account_id IS 'A foreign key that references the account_id in the Accounts table';
/
COMMENT ON COLUMN BAMS_Cust_Benf_Detl.name IS 'The name of the beneficiary';
/
COMMENT ON COLUMN BAMS_Cust_Benf_Detl.relationship IS 'The relationship of the beneficiary to the account holder';
/
COMMENT ON COLUMN BAMS_Cust_Benf_Detl.percentage IS 'The percentage of inheritance allocated to the beneficiary';
/

--End of customer beneficiary table