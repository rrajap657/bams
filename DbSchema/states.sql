
CREATE TABLE bams_states_detl_tabl (
	    state_id       NUMBER(6),
	    state_name     VARCHAR2(50) NOT NULL,
	    state_code     CHAR(2) NOT NULL,
	    head_office_id NUMBER(4) NOT NULL,
	    CONSTRAINT pk_state_id PRIMARY KEY ( state_id )
);

create sequence seq_state_id start with 1 increment by 1 maxvalue 120; 

ALTER TABLE bams_states_detl_tabl
    ADD CONSTRAINT fk_hof_id FOREIGN KEY ( head_office_id )
        REFERENCES bams_head_ofsc_detl ( head_office_id );
	        
	/
	comment on column bams_states_detl_tabl.state_id is 'A unique identifier for each state';
	/
	comment on column bams_states_detl_tabl.state_name is 'The name of the state';
	/
	comment on column bams_states_detl_tabl.state_code is 'The code of the state';
	/
	comment on column bams_states_detl_tabl.head_office_id is 'A foreign key that references the head_office_id in the HeadOffice table';
	/

	--End of creating state detail table
