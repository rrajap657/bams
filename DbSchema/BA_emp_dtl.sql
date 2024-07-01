CREATE TABLE bams_empl_detl_tabl (
    employee_id    NUMBER(8),
    first_name     VARCHAR2(50) NOT NULL,
    last_name      VARCHAR2(50) NOT NULL,
    position       VARCHAR2(100) NOT NULL,
    hire_date      DATE NOT NULL,
    branch_id      NUMBER(6),
    head_office_id NUMBER(4),
    CONSTRAINT pk_emp_id PRIMARY KEY ( employee_id )
);

ALTER TABLE bams_empl_detl_tabl
    ADD CONSTRAINT fk_br_id FOREIGN KEY ( branch_id )
        REFERENCES bams_bran_detl_tabl ( branch_id );

ALTER TABLE bams_empl_detl_tabl
    ADD CONSTRAINT fk_hoff_id FOREIGN KEY ( head_office_id )
        REFERENCES bams_head_ofsc_detl ( head_office_id );