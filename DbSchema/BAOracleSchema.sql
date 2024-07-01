REM INSERTING 
SET DEFINE OFF;

-- Creating HeadOffice table

CREATE TABLE BAMS_Head_Ofsc_Detl (
    head_office_id NUMBER(4),
    name VARCHAR2(100) NOT NULL,
    address VARCHAR2(200) NOT NULL,
    phone_number VARCHAR2(20) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    established_date DATE NOT NULL 
);
/
COMMENT ON COLUMN BAMS_Head_Ofsc_Detl.head_office_id IS 'A unique identifier for each head office';
/
COMMENT ON COLUMN BAMS_Head_Ofsc_Detl.name IS 'The name of the head office';
/
COMMENT ON COLUMN BAMS_Head_Ofsc_Detl.address IS 'The physical address of the head office';
/
COMMENT ON COLUMN BAMS_Head_Ofsc_Detl.phone_number IS 'The contact phone number for the head office';
/
COMMENT ON COLUMN BAMS_Head_Ofsc_Detl.email IS 'The contact email address for the head office';
/
COMMENT ON COLUMN BAMS_Head_Ofsc_Detl.established_date IS 'The date when the head office was established';
/
create sequence seq_hofc_id start with 1 increment by 1 max 500;
/
alter table BAMS_Head_Ofsc_Detl add constraint pk_hofc_id primary key(head_office_id);
/

-- End of Creating HeadOffice table

