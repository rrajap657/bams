CREATE TABLE bams_cust_detl_tabl (
    customer_id   NUMBER(10),
    first_name    VARCHAR2(50) NOT NULL,
    last_name     VARCHAR2(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    address       VARCHAR2(200) NOT NULL,
    phone_number  VARCHAR2(20),
    email         VARCHAR2(100),
    ssn           VARCHAR2(11) NOT NULL,
    state_id      NUMBER(6) NOT NULL,
    zone_id       NUMBER(6) NOT NULL,
    branch_id     NUMBER(6) NOT NULL,
    CONSTRAINT pk_cus_id PRIMARY KEY ( customer_id )
);

create sequence seq_customer_id start with 1 increment by 1 maxvalue 9999999999; 


ALTER TABLE bams_cust_detl_tabl
    ADD CONSTRAINT fk_stat_id FOREIGN KEY ( state_id )
        REFERENCES bams_states_detl_tabl ( state_id );

ALTER TABLE bams_cust_detl_tabl
    ADD CONSTRAINT fk_zon_id FOREIGN KEY ( zone_id )
        REFERENCES bams_zone_detl_tabl ( zone_id );

ALTER TABLE bams_cust_detl_tabl
    ADD CONSTRAINT fk_bran_id FOREIGN KEY ( branch_id )
        REFERENCES bams_bran_detl_tabl ( branch_id );
        

/
COMMENT ON COLUMN bams_cust_detl_tabl.customer_id IS 'A unique identifier for each customer';
/
COMMENT ON COLUMN bams_cust_detl_tabl.first_name IS 'The first name of the customer';
/
COMMENT ON COLUMN bams_cust_detl_tabl.last_name IS 'The last name of the customer';
/
COMMENT ON COLUMN bams_cust_detl_tabl.date_of_birth IS 'The date of birth of the customer';
/
COMMENT ON COLUMN bams_cust_detl_tabl.address IS 'The physical address of the customer';
/
COMMENT ON COLUMN bams_cust_detl_tabl.phone_number IS 'The contact phone number for the customer';
/
COMMENT ON COLUMN bams_cust_detl_tabl.email IS 'The contact email address for the customer.';
/
COMMENT ON COLUMN bams_cust_detl_tabl.ssn IS 'The social security number of the customer.';
/
COMMENT ON COLUMN bams_cust_detl_tabl.state_id IS 'A foreign key that references the state_id in the States table';
/
COMMENT ON COLUMN bams_cust_detl_tabl.zone_id IS 'A foreign key that references the zone_id in the Zones table.';
/
COMMENT ON COLUMN bams_cust_detl_tabl.branch_id IS 'A foreign key that references the branch_id in the Branches table';
/

--End of customer table
