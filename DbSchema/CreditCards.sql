-- Enable REM and SET commands
REM INSERTING 
SET DEFINE OFF;

-- BA-14 -- Create  Table CreditCards  AND  Table Name:BAMS_Cust_Crcd_Detll 

create table BAMS_Cust_Crcd_Detl( card_id  NUMBER(12) not null,
                                  customer_id NUMBER(10),
                                  card_type_id  NUMBER(4)not null,
                                  card_number  VARCHAR2(16)not null,
                                  expiration_date  DATE not null,
                                  cvv  VARCHAR2(4)not null,
                                  credit_limit  NUMBER(8,2)not null,
                                  current_balance  NUMBER(8,2)not null,
                                  issue_date  DATE not null,
                                  status  VARCHAR2(20)not null,
                                  constraint pk_card_id primary key(card_id),
                                  constraint fk_customer_id foreign key(customer_id) references bams_cust_detl_tabl(customer_id),
                                  constraint fk_card_type_id foreign key(card_type_id) references BAMS_Card_Type_Detl(card_type_id),
                                  constraint ck_card_status check(status in('active', 'paid', 'blocked')),
                                  constraint uk_card_number unique(card_number)
                                  );
                                  
                                  
  -- Create sequence for card_id
CREATE SEQUENCE seq_card_id START WITH 1 INCREMENT BY 1 MAXVALUE 999999999999;


-- Add Comments to Table and Columns
/
COMMENT ON TABLE BAMS_Cust_Crcd_Detl IS 'A Table to manage CreditCards should be created in the database';
/
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.card_id IS 'A unique identifier for each loan';
/
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.customer_id 	IS 'A foreign key that references the customer_id in the Customers table';
/
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.card_number  IS 'The unique card number of the credit card';
/
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.expiration_date IS 'The expiration date of the credit card';
/
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.cvv  IS 'The CVV (Card Verification Value) of the credit card';
/
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.credit_limit IS 'The credit limit assigned to the credit card';
/
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.current_balance IS 'The current balance of the credit card';
/
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.issue_date IS 'The date when the credit card was issued';
/
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.status IS 'The status of the credit card, which can be 'active', 'inactive', or 'blocked'';
/

-- End of Creating CreditCards  Table    

