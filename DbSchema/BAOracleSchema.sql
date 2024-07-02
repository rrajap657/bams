-- Enable REM and SET commands
REM INSERTING 
SET DEFINE OFF;

-- Create BAMS_Head_Ofsc_Detl table
CREATE TABLE BAMS_Head_Ofsc_Detl (
    head_office_id NUMBER(4),
    name VARCHAR2(100) NOT NULL,
    address VARCHAR2(200) NOT NULL,
    phone_number VARCHAR2(20) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    established_date DATE NOT NULL,
    CONSTRAINT pk_hofc_id PRIMARY KEY (head_office_id)
);

CREATE SEQUENCE seq_hofc_id START WITH 1 INCREMENT BY 1 MAXVALUE 500;

COMMENT ON COLUMN BAMS_Head_Ofsc_Detl.head_office_id IS 'A unique identifier for each head office';
COMMENT ON COLUMN BAMS_Head_Ofsc_Detl.name IS 'The name of the head office';
COMMENT ON COLUMN BAMS_Head_Ofsc_Detl.address IS 'The physical address of the head office';
COMMENT ON COLUMN BAMS_Head_Ofsc_Detl.phone_number IS 'The contact phone number for the head office';
COMMENT ON COLUMN BAMS_Head_Ofsc_Detl.email IS 'The contact email address for the head office';
COMMENT ON COLUMN BAMS_Head_Ofsc_Detl.established_date IS 'The date when the head office was established';

-- Create bams_states_detl_tabl table
CREATE TABLE bams_states_detl_tabl (
    state_id NUMBER(6),
    state_name VARCHAR2(50) NOT NULL,
    state_code CHAR(2) NOT NULL,
    head_office_id NUMBER(4) NOT NULL,
    CONSTRAINT pk_state_id PRIMARY KEY (state_id),
    CONSTRAINT fk_hof_id FOREIGN KEY (head_office_id) REFERENCES bams_head_ofsc_detl (head_office_id)
);

CREATE SEQUENCE seq_state_id START WITH 1 INCREMENT BY 1 MAXVALUE 120;

COMMENT ON COLUMN bams_states_detl_tabl.state_id IS 'A unique identifier for each state';
COMMENT ON COLUMN bams_states_detl_tabl.state_name IS 'The name of the state';
COMMENT ON COLUMN bams_states_detl_tabl.state_code IS 'The code of the state';
COMMENT ON COLUMN bams_states_detl_tabl.head_office_id IS 'A foreign key that references the head_office_id in the HeadOffice table';

-- Create bams_zone_detl_tabl table
CREATE TABLE bams_zone_detl_tabl (
    zone_id NUMBER(6),
    zone_name VARCHAR2(50) NOT NULL,
    state_id NUMBER(6) NOT NULL,
    CONSTRAINT pk_zoneid PRIMARY KEY (zone_id),
    CONSTRAINT fk_st_id FOREIGN KEY (state_id) REFERENCES bams_states_detl_tabl (state_id)
);

CREATE SEQUENCE seq_zone_id START WITH 1 INCREMENT BY 1 MAXVALUE 10;

COMMENT ON COLUMN bams_zone_detl_tabl.zone_id IS 'A unique identifier for each zone';
COMMENT ON COLUMN bams_zone_detl_tabl.zone_name IS 'The name of the zone';
COMMENT ON COLUMN bams_zone_detl_tabl.state_id IS 'A foreign key that references the state_id in the States table';

-- Create bams_bran_detl_tabl table
CREATE TABLE bams_bran_detl_tabl (
    branch_id NUMBER(6),
    branch_name VARCHAR2(100) NOT NULL,
    address VARCHAR2(200) NOT NULL,
    phone_number VARCHAR2(20),
    state_id NUMBER(6) NOT NULL,
    zone_id NUMBER(6) NOT NULL,
    head_office_id NUMBER(4) NOT NULL,
    CONSTRAINT pk_br_id PRIMARY KEY (branch_id),
    CONSTRAINT fk_sta_id FOREIGN KEY (state_id) REFERENCES bams_states_detl_tabl (state_id),
    CONSTRAINT fk_zn_id FOREIGN KEY (zone_id) REFERENCES bams_zone_detl_tabl (zone_id),
    CONSTRAINT fk_hdf_id FOREIGN KEY (head_office_id) REFERENCES bams_head_ofsc_detl (head_office_id)
);

CREATE SEQUENCE seq_branch_id START WITH 1 INCREMENT BY 1 MAXVALUE 999999;

COMMENT ON COLUMN bams_bran_detl_tabl.branch_id IS 'A unique identifier for each branch';
COMMENT ON COLUMN bams_bran_detl_tabl.branch_name IS 'The name of the branch';
COMMENT ON COLUMN bams_bran_detl_tabl.address IS 'The physical address of the branch';
COMMENT ON COLUMN bams_bran_detl_tabl.phone_number IS 'The contact phone number for the branch';
COMMENT ON COLUMN bams_bran_detl_tabl.state_id IS 'A foreign key that references the state_id in the States table';
COMMENT ON COLUMN bams_bran_detl_tabl.zone_id IS 'A foreign key that references the zone_id in the Zones table';
COMMENT ON COLUMN bams_bran_detl_tabl.head_office_id IS 'A foreign key that references the head_office_id in the HeadOffice table';

-- Create bams_empl_detl_tabl table
CREATE TABLE bams_empl_detl_tabl (
    employee_id NUMBER(8),
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    position VARCHAR2(100) NOT NULL,
    hire_date DATE NOT NULL,
    branch_id NUMBER(6),
    head_office_id NUMBER(4),
    CONSTRAINT pk_emp_id PRIMARY KEY (employee_id),
    CONSTRAINT fk_br_id FOREIGN KEY (branch_id) REFERENCES bams_bran_detl_tabl (branch_id),
    CONSTRAINT fk_hoff_id FOREIGN KEY (head_office_id) REFERENCES bams_head_ofsc_detl (head_office_id)
);

CREATE SEQUENCE seq_employee_id START WITH 1 INCREMENT BY 1 MAXVALUE 99999999;

COMMENT ON COLUMN bams_empl_detl_tabl.employee_id IS 'A unique identifier for each employee';
COMMENT ON COLUMN bams_empl_detl_tabl.first_name IS 'The first name of the employee';
COMMENT ON COLUMN bams_empl_detl_tabl.last_name IS 'The last name of the employee';
COMMENT ON COLUMN bams_empl_detl_tabl.position IS 'The position of the employee within the company';
COMMENT ON COLUMN bams_empl_detl_tabl.hire_date IS 'The date when the employee was hired';
COMMENT ON COLUMN bams_empl_detl_tabl.branch_id IS 'A foreign key that references the branch_id in the Branches table';
COMMENT ON COLUMN bams_empl_detl_tabl.head_office_id IS 'A foreign key that references the head_office_id in the HeadOffice table';


-- Create BAMS_Cust_Detl_Tabl
CREATE TABLE BAMS_Cust_Detl_Tabl (
    customer_id NUMBER(10),
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    address VARCHAR2(200) NOT NULL,
    phone_number VARCHAR2(20),
    email VARCHAR2(100),
    ssn VARCHAR2(11) NOT NULL,
    state_id NUMBER(6) NOT NULL,
    zone_id NUMBER(6) NOT NULL,
    branch_id NUMBER(6) NOT NULL,
    CONSTRAINT pk_cust_id PRIMARY KEY (customer_id),
    CONSTRAINT fk_cust_state_id FOREIGN KEY (state_id) REFERENCES bams_states_detl_tabl (state_id),
    CONSTRAINT fk_cust_zone_id FOREIGN KEY (zone_id) REFERENCES bams_zone_detl_tabl (zone_id),
    CONSTRAINT fk_cust_branch_id FOREIGN KEY (branch_id) REFERENCES bams_bran_detl_tabl (branch_id)
);

-- Create sequence for customer_id
CREATE SEQUENCE seq_customer_id START WITH 1 INCREMENT BY 1 MAXVALUE 9999999999;

-- Add comments to table and columns
COMMENT ON TABLE BAMS_Cust_Detl_Tabl IS 'Table to store customer information';
COMMENT ON COLUMN BAMS_Cust_Detl_Tabl.customer_id IS 'A unique identifier for each customer';
COMMENT ON COLUMN BAMS_Cust_Detl_Tabl.first_name IS 'The first name of the customer';
COMMENT ON COLUMN BAMS_Cust_Detl_Tabl.last_name IS 'The last name of the customer';
COMMENT ON COLUMN BAMS_Cust_Detl_Tabl.date_of_birth IS 'The date of birth of the customer';
COMMENT ON COLUMN BAMS_Cust_Detl_Tabl.address IS 'The physical address of the customer';
COMMENT ON COLUMN BAMS_Cust_Detl_Tabl.phone_number IS 'The contact phone number for the customer';
COMMENT ON COLUMN BAMS_Cust_Detl_Tabl.email IS 'The contact email address for the customer';
COMMENT ON COLUMN BAMS_Cust_Detl_Tabl.ssn IS 'The social security number of the customer';
COMMENT ON COLUMN BAMS_Cust_Detl_Tabl.state_id IS 'A foreign key that references the state_id in the States table';
COMMENT ON COLUMN BAMS_Cust_Detl_Tabl.zone_id IS 'A foreign key that references the zone_id in the Zones table';
COMMENT ON COLUMN BAMS_Cust_Detl_Tabl.branch_id IS 'A foreign key that references the branch_id in the Branches table';

-- Create BAMS_Acct_Type_Detl table
CREATE TABLE BAMS_Acct_Type_Detl (
    account_type_id NUMBER(4),
    type_name VARCHAR2(50) NOT NULL,
    description VARCHAR2(200),
    interest_rate NUMBER(5,2) NOT NULL,
    CONSTRAINT pk_acc_id PRIMARY KEY (account_type_id)
);

CREATE SEQUENCE seq_account_type_id START WITH 1 INCREMENT BY 1 MAXVALUE 9999;

COMMENT ON COLUMN BAMS_Acct_Type_Detl.account_type_id IS 'A unique identifier for each account type';
COMMENT ON COLUMN BAMS_Acct_Type_Detl.type_name IS 'The name of the account type';
COMMENT ON COLUMN BAMS_Acct_Type_Detl.description IS 'A description of the account type';
COMMENT ON COLUMN BAMS_Acct_Type_Detl.interest_rate IS 'The interest rate associated with the account type';

-- Create BAMS_Cust_Acct_Detl table
CREATE TABLE BAMS_Cust_Acct_Detl (
    account_id NUMBER(12),
    customer_id NUMBER(10) NOT NULL,
    account_type_id NUMBER(4) NOT NULL,
    account_number VARCHAR2(20) NOT NULL,
    balance NUMBER(12,2) NOT NULL,
    opening_date DATE NOT NULL,
    status VARCHAR2(10) NOT NULL,
    branch_id NUMBER(6) NOT NULL,
    CONSTRAINT pk_account_id PRIMARY KEY (account_id),
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES BAMS_Cust_Detl_Tabl(customer_id),
    CONSTRAINT fk_account_type_id FOREIGN KEY (account_type_id) REFERENCES BAMS_Acct_Type_Detl(account_type_id),
    CONSTRAINT fk_branch_id FOREIGN KEY (branch_id) REFERENCES bams_bran_detl_tabl(branch_id),
    CONSTRAINT uk_account_number UNIQUE (account_number),
    CONSTRAINT ck_status CHECK (status IN ('active', 'inactive'))
);

-- Create sequence for account_id
CREATE SEQUENCE seq_account_id START WITH 1 INCREMENT BY 1 MAXVALUE 999999999999;

-- Add comments to table and columns
COMMENT ON TABLE BAMS_Cust_Acct_Detl IS 'Table to store customer account information';
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.account_id IS 'A unique identifier for each account';
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.customer_id IS 'A foreign key that references the customer_id in the Customers table';
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.account_type_id IS 'A foreign key that references the account_type_id in the AccountTypes table';
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.account_number IS 'A unique account number for the account';
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.balance IS 'The current balance of the account';
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.opening_date IS 'The date when the account was opened';
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.status IS 'The status of the account (active or inactive)';
COMMENT ON COLUMN BAMS_Cust_Acct_Detl.branch_id IS 'A foreign key that references the branch_id in the Branches table';

-- Create bams_Tran_Type_Detl table
CREATE TABLE bams_Tran_Type_Detl (
    transaction_type_id NUMBER(4),
    type_name VARCHAR2(50) NOT NULL,
    description VARCHAR2(200),
    CONSTRAINT pk_tran_id PRIMARY KEY (transaction_type_id)
);

CREATE SEQUENCE seq_transaction_type_id START WITH 1 INCREMENT BY 1 MAXVALUE 9999;

COMMENT ON COLUMN bams_Tran_Type_Detl.transaction_type_id IS 'A unique identifier for each transaction type';
COMMENT ON COLUMN bams_Tran_Type_Detl.type_name IS 'The name of the transaction type';
COMMENT ON COLUMN bams_Tran_Type_Detl.description IS 'A description of the transaction type';

-- Create BAMS_daly_tran_detl table
CREATE TABLE BAMS_daly_tran_detl (
    transaction_id NUMBER(16),
    account_id NUMBER(12) NOT NULL,
    transaction_type_id NUMBER(4) NOT NULL,
    amount NUMBER(12,2) NOT NULL,
    transaction_date TIMESTAMP NOT NULL,
    description VARCHAR2(200),
    CONSTRAINT pk_transaction_id PRIMARY KEY (transaction_id),
    CONSTRAINT fk_account_id FOREIGN KEY (account_id) REFERENCES BAMS_Cust_Acct_Detl(account_id),
    CONSTRAINT fk_transaction_type_id FOREIGN KEY (transaction_type_id) REFERENCES bams_Tran_Type_Detl(transaction_type_id)
);

-- Create sequence for transaction_id
CREATE SEQUENCE seq_transaction_id START WITH 1 INCREMENT BY 1 MAXVALUE 99999999999999;

-- Add comments to table and columns
COMMENT ON TABLE BAMS_daly_tran_detl IS 'Table to store daily transaction details';
COMMENT ON COLUMN BAMS_daly_tran_detl.transaction_id IS 'A unique identifier for each transaction';
COMMENT ON COLUMN BAMS_daly_tran_detl.account_id IS 'A foreign key that references the account_id in the Accounts table';
COMMENT ON COLUMN BAMS_daly_tran_detl.transaction_type_id IS 'A foreign key that references the transaction_type_id in the TransactionTypes table';
COMMENT ON COLUMN BAMS_daly_tran_detl.amount IS 'The amount of the transaction';
COMMENT ON COLUMN BAMS_daly_tran_detl.transaction_date IS 'The date and time when the transaction occurred';
COMMENT ON COLUMN BAMS_daly_tran_detl.description IS 'A description of the transaction (optional)';

-- Create BAMS_Loan_Type_Detl table
CREATE TABLE BAMS_Loan_Type_Detl (
    loan_type_id NUMBER(4),
    type_name VARCHAR2(50) NOT NULL,
    description VARCHAR2(200),
    min_credit_score NUMBER(3),
    interest_rate NUMBER(5,2) NOT NULL,
    CONSTRAINT pk_loan_id PRIMARY KEY (loan_type_id)
);

CREATE SEQUENCE seq_loan_type_id START WITH 1 INCREMENT BY 1 MAXVALUE 9999;

COMMENT ON COLUMN BAMS_Loan_Type_Detl.loan_type_id IS 'A unique identifier for each loan type';
COMMENT ON COLUMN BAMS_Loan_Type_Detl.type_name IS 'The name of the loan type';
COMMENT ON COLUMN BAMS_Loan_Type_Detl.description IS 'A description of the loan type';
COMMENT ON COLUMN BAMS_Loan_Type_Detl.min_credit_score IS 'The minimum credit score required to qualify for the loan type';
COMMENT ON COLUMN BAMS_Loan_Type_Detl.interest_rate IS 'The interest rate associated with the loan type';