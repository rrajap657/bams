
CREATE TABLE BAMS_Head_Ofsc_Detl (
    head_office_id   NUMBER(4),
    name             VARCHAR2(100) NOT NULL,
    address          VARCHAR2(200) NOT NULL,
    phone_number     VARCHAR2(20) NOT NULL,
    email            VARCHAR2(100) NOT NULL,
    established_date DATE NOT NULL,
    CONSTRAINT pk_hofc_id PRIMARY KEY ( head_office_id ));