CREATE TABLE bams_cust_docm_detl (
    document_id     NUMBER(12),
    customer_id     NUMBER(10) NOT NULL,
    document_type   VARCHAR2(50) NOT NULL,--(e.g., passport, driver's license)
    document_number VARCHAR2(50) NOT NULL,
    issue_date      DATE,
    expiry_date     DATE,
    document_status VARCHAR2(20),--(e.g., valid, expired, pending)
    CONSTRAINT pk_doc_id PRIMARY KEY ( document_id )
);

CREATE SEQUENCE seq_document_id START WITH 1 INCREMENT BY 1 MAXVALUE 999999999999;

ALTER TABLE bams_cust_docm_detl
    ADD CONSTRAINT fk_cust_id FOREIGN KEY ( customer_id )
        REFERENCES bams_cust_detl_tabl ( customer_id );
        
        
/
COMMENT ON COLUMN bams_cust_docm_detl.document_id IS 'A unique identifier for each document';
/
COMMENT ON COLUMN bams_cust_docm_detl.customer_id IS 'A foreign key that references the customer_id in the Customers table';
/
COMMENT ON COLUMN bams_cust_docm_detl.document_type IS 'The type of the document (e.g., passport, drivers license)';
/
COMMENT ON COLUMN bams_cust_docm_detl.document_number IS 'The unique identifier or number associated with the document';
/
COMMENT ON COLUMN bams_cust_docm_detl.issue_date IS 'The date when the document was issued';
/
COMMENT ON COLUMN bams_cust_docm_detl.expiry_date IS 'The expiration date of the document';
/
COMMENT ON COLUMN bams_cust_docm_detl.document_status IS 'The status of the document (e.g., valid, expired, pending)';
/

--End of customer document table