-- Enable REM and SET commands
REM INSERTING 
SET DEFINE OFF;

-- BA-15 -- Create  Table DebitCards  AND  Table Name:BAMS_Drcd_Card_Detl

create table BAMS_Drcd_Card_Detl( debit_card_id NUMBER(12),
                                  account_id  NUMBER(12) not null,
                                  card_type_id  NUMBER(4) not null,
                                  card_number  VARCHAR2(16) not null,
                                  expiration_date  DATE not null,
                                  cvv  VARCHAR2(4) not null,
                                  daily_withdrawal_limit  NUMBER(8,2) not null,
                                  issue_date  DATE not null,
                                  status  VARCHAR2(20) not null,
                                  constraint pk_debit_card_id primary key(debit_card_id),
                                  constraint fk_account_id foreign key(account_id) references BAMS_Cust_Acct_Detll(account_id),
                                  constraint fk_card_type_id foreign key(card_type_id) references BAMS_Card_Type_Detl(card_type_id),
                                  constraint ck_card_status check(status in('active', 'paid', 'blocked')),
                                  constraint uk_card_number unique(card_number)
                                  );
                                  
                                  
 -- Create sequence for card_id
CREATE SEQUENCE seq_card_id START WITH 1 INCREMENT BY 1 MAXVALUE 999999999999;

-- Add Comments to Table and Columns
/
COMMENT ON TABLE BAMS_Drcd_Card_Detl IS 'A Table to manage DebitCards should be created in the database';
/
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.debit_card_id  IS 'A unique identifier for each debit card';
/
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.account_id  	IS 'A foreign key that references the account_id in the Accounts table';
/
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.card_type_id  IS 'A foreign key that references the card_type_id in the CardTypes table.';
/
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.card_number IS 'The unique card number of the debit card';
/
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.expiration_date IS 'The expiration date of the debit card';
/
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.cvv IS 'The CVV (Card Verification Value) of the debit card';
/
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.daily_withdrawal_limit IS 'The daily withdrawal limit associated with the debit card';
/
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.issue_date  IS 'The date when the debit card was issued';
/
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.status IS 'The status of the debit card, which can be 'active', 'inactive', or 'blocked';
/


-- End of Creating DebitCards  Table  
