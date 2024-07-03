-- Enable REM and SET commands
REM INSERTING 
SET DEFINE OFF;

-- BA-13 -- Create New Table CardTypes  AND  Table Name:BAMS_Card_Type_Detl 

create table BAMS_Card_Type_Detl(card_type_id NUMBER(4),
                                 type_name  VARCHAR2(50) not null,
                                 description  VARCHAR2(200),
                                 annual_fee  NUMBER(8,2),
                                 reward_program  VARCHAR2(100),
                                 interest_rate NUMBER(5,2) not null,
                                 constraint pk_card_type_id primary key(card_type_id));


  -- Create sequence for card_type_id
CREATE SEQUENCE seq_card_type_id START WITH 1 INCREMENT BY 1 MAXVALUE 9999 ;



-- Add Comments to Table and Columns
/
COMMENT ON TABLE BAMS_Card_Type_Detl IS 'A new table named CardTypes should be created in the database';
/
COMMENT ON COLUMN BAMS_Card_Type_Detl.card_type_id  IS 'A unique identifier for each card type';
/
COMMENT ON COLUMN BAMS_Card_Type_Detl.type_name IS 'The name of the card type';
/
COMMENT ON COLUMN BAMS_Card_Type_Detl.description  IS 'A description of the card type';
/
COMMENT ON COLUMN BAMS_Card_Type_Detl.annual_fee IS 'The annual fee associated with the card type';
/
COMMENT ON COLUMN BAMS_Card_Type_Detl.reward_program IS 'Details about the reward program associated with the card type';
/
COMMENT ON COLUMN BAMS_Card_Type_Detl.interest_rate IS 'The interest rate associated with the card type';
/

-- End of Creating CardTypes Table     

