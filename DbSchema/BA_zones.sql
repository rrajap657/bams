CREATE TABLE bams_zone_detl_tabl (
    zone_id   NUMBER(6),
    zone_name VARCHAR2(50) NOT NULL,
    state_id  NUMBER(6) NOT NULL,
    CONSTRAINT pk_zoneid PRIMARY KEY ( zone_id )
);

ALTER TABLE bams_zone_detl_tabl
    ADD CONSTRAINT fk_st_id FOREIGN KEY ( state_id )
        REFERENCES bams_states_detl_tabl ( state_id );

SELECT
    *
FROM
    bams_zone_detl_tabl;