CREATE TABLE bams_bran_detl_tabl (
    branch_id      NUMBER(6),
    branch_name    VARCHAR2(100) NOT NULL,
    address        VARCHAR2(200) NOT NULL,
    phone_number   VARCHAR2(20),
    state_id       NUMBER(6) NOT NULL,
    zone_id        NUMBER(6) NOT NULL,
    head_office_id NUMBER(4) NOT NULL,
    CONSTRAINT pk_br_id PRIMARY KEY ( branch_id )
);

create sequence seq_branch_id start with 1 increment by 1 maxvalue 999999; 

ALTER TABLE bams_bran_detl_tabl
    ADD CONSTRAINT fk_sta_id FOREIGN KEY ( state_id )
        REFERENCES bams_states_detl_tabl ( state_id );

ALTER TABLE bams_bran_detl_tabl
    ADD CONSTRAINT fk_zn_id FOREIGN KEY ( zone_id )
        REFERENCES bams_zone_detl_tabl ( zone_id );

ALTER TABLE bams_bran_detl_tabl
    ADD CONSTRAINT fk_hdf_id FOREIGN KEY ( head_office_id )
        REFERENCES bams_head_ofsc_detl ( head_office_id );

/
COMMENT ON COLUMN bams_bran_detl_tabl.branch_id IS 'A unique identifier for each branch';
/
COMMENT ON COLUMN bams_bran_detl_tabl.branch_name IS 'The name of the branch';
/
COMMENT ON COLUMN bams_bran_detl_tabl.address IS 'The physical address of the branch';
/
COMMENT ON COLUMN bams_bran_detl_tabl.phone_number IS 'The contact phone number for the branch';
/
COMMENT ON COLUMN bams_bran_detl_tabl.state_id IS 'A foreign key that references the state_id in the States table';
/
COMMENT ON COLUMN bams_bran_detl_tabl.zone_id IS 'A foreign key that references the zone_id in the Zones table';
/
COMMENT ON COLUMN bams_bran_detl_tabl.head_office_id IS 'A foreign key that references the head_office_id in the HeadOffice table';
/

--End of Branch table details