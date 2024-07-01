CREATE TABLE bams_states_detl_tabl (
    state_id       NUMBER(6),
    state_name     VARCHAR2(50) NOT NULL,
    state_code     CHAR(2) NOT NULL,
    head_office_id NUMBER(4) NOT NULL,
    CONSTRAINT pk_state_id PRIMARY KEY ( state_id )
);

ALTER TABLE bams_states_detl_tabl
    ADD CONSTRAINT fk_hof_id FOREIGN KEY ( head_office_id )
        REFERENCES bams_head_ofsc_detl ( head_office_id );