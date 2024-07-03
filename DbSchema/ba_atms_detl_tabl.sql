CREATE TABLE bams_atms_detl_tabl (
    atm_id         NUMBER(6),
    location       VARCHAR2(200) NOT NULL,
    branch_id      NUMBER(6),
    head_office_id NUMBER(4),
    status         VARCHAR2(20) NOT NULL,--'active', 'inactive', or 'maintenance'
    CONSTRAINT pk_atm_id PRIMARY KEY ( atm_id )
);

CREATE SEQUENCE seq_atm_id START WITH 1 INCREMENT BY 1 MAXVALUE 999999;

ALTER TABLE bams_atms_detl_tabl
    ADD CONSTRAINT fk_br_id FOREIGN KEY ( branch_id )
        REFERENCES bams_bran_detl_tabl ( branch_id );

ALTER TABLE bams_atms_detl_tabl
    ADD CONSTRAINT fk_hd_id FOREIGN KEY ( head_office_id )
        REFERENCES bams_head_ofsc_detl ( head_office_id );
        

/
COMMENT ON COLUMN bams_atms_detl_tabl.atm_id IS 'A unique identifier for each ATM';
/
COMMENT ON COLUMN bams_atms_detl_tabl.location IS 'The location where the ATM is installed';
/
COMMENT ON COLUMN bams_atms_detl_tabl.branch_id IS 'A foreign key that references the branch_id in the Branches table';
/
COMMENT ON COLUMN bams_atms_detl_tabl.head_office_id IS 'A foreign key that references the head_office_id in the HeadOffice table';
/
COMMENT ON COLUMN bams_atms_detl_tabl.status IS 'The status of the ATM, which can be 'active', 'inactive', or 'maintenance'';
/

--End of ATM detail table