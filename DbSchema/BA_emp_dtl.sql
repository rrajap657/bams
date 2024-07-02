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

create sequence seq_employee_id start with 1 increment by 1 maxvalue 99999999; 

ALTER TABLE bams_empl_detl_tabl
    ADD CONSTRAINT fk_br_id FOREIGN KEY ( branch_id )
        REFERENCES bams_bran_detl_tabl ( branch_id );

ALTER TABLE bams_empl_detl_tabl
    ADD CONSTRAINT fk_hoff_id FOREIGN KEY ( head_office_id )
        REFERENCES bams_head_ofsc_detl ( head_office_id );


/
COMMENT ON COLUMN bams_empl_detl_tabl.employee_id IS 'A unique identifier for each employee';
/
COMMENT ON COLUMN bams_empl_detl_tabl.first_name IS 'The first name of the employee';
/
COMMENT ON COLUMN bams_empl_detl_tabl.last_name IS 'The last name of the employee.';
/
COMMENT ON COLUMN bams_empl_detl_tabl.position IS 'The position of the employee within the company';
/
COMMENT ON COLUMN bams_empl_detl_tabl.hire_date IS 'The date when the employee was hired';
/
COMMENT ON COLUMN bams_empl_detl_tabl.branch_id IS 'A foreign key that references the branch_id in the Branches table';
/
COMMENT ON COLUMN bams_empl_detl_tabl.head_office_id IS 'A foreign key that references the head_office_id in the HeadOffice table';
/

--End of employees table detail