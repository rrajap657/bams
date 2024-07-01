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

ALTER TABLE bams_cust_detl_tabl
    ADD CONSTRAINT fk_stat_id FOREIGN KEY ( state_id )
        REFERENCES bams_states_detl_tabl ( state_id );

ALTER TABLE bams_cust_detl_tabl
    ADD CONSTRAINT fk_zon_id FOREIGN KEY ( zone_id )
        REFERENCES bams_zone_detl_tabl ( zone_id );

ALTER TABLE bams_cust_detl_tabl
    ADD CONSTRAINT fk_bran_id FOREIGN KEY ( branch_id )
        REFERENCES bams_bran_detl_tabl ( branch_id );