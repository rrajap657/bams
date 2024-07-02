CREATE TABLE bams_zone_detl_tabl (
    zone_id   NUMBER(6),
    zone_name VARCHAR2(50) NOT NULL,
    state_id  NUMBER(6) NOT NULL,
    CONSTRAINT pk_zoneid PRIMARY KEY ( zone_id )
);

create sequence seq_zone_id start with 1 increment by 1 maxvalue 10; 

ALTER TABLE bams_zone_detl_tabl
    ADD CONSTRAINT fk_st_id FOREIGN KEY ( state_id )
        REFERENCES bams_states_detl_tabl ( state_id );

/
COMMENT ON COLUMN bams_zone_detl_tabl.zone_id IS 'A unique identifier for each zone';
/
COMMENT ON COLUMN bams_zone_detl_tabl.zone_name IS 'The name of the zone';
/
COMMENT ON COLUMN bams_zone_detl_tabl.state_id IS 'A foreign key that references the state_id in the States table.';
/

--End of zone table detail