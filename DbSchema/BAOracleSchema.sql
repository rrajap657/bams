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
    state_code VARCHAR2(2) NOT NULL,
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

-- Create BAMS_Cust_Loan_Detl
CREATE TABLE BAMS_Cust_Loan_Detl (
    loan_id NUMBER(12) PRIMARY KEY,  -- A unique identifier for each loan
    customer_id NUMBER(10) NOT NULL,  -- A foreign key referencing the customer_id in the Customers table
    loan_type_id NUMBER(4) NOT NULL,  -- A foreign key referencing the loan_type_id in the LoanTypes table
    amount NUMBER(12,2) NOT NULL,  -- The amount of the loan
    start_date DATE NOT NULL,  -- The date when the loan starts
    end_date DATE NOT NULL,  -- The date when the loan is expected to be fully repaid
    status VARCHAR2(20) CHECK (status IN ('active', 'paid', 'defaulted')) NOT NULL,  -- The status of the loan
    constraint pk_loan_id primary key(loan_id),
    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id) REFERENCES BAMS_Cust_Detl_Tabl(customer_id),  -- Foreign key constraint for customer_id
    CONSTRAINT fk_loan_type
        FOREIGN KEY (loan_type_id) REFERENCES BAMS_Loan_Type_Detl(loan_type_id)  -- Foreign key constraint for loan_type_id
);

-- Create a sequence for loan_id
CREATE SEQUENCE seq_loan_id
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Add comments to columns
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.loan_id IS 'A unique identifier for each loan';
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.customer_id IS 'A foreign key referencing the customer_id in the Customers table';
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.loan_type_id IS 'A foreign key referencing the loan_type_id in the LoanTypes table';
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.amount IS 'The amount of the loan';
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.start_date IS 'The date when the loan starts';
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.end_date IS 'The date when the loan is expected to be fully repaid';
COMMENT ON COLUMN BAMS_Cust_Loan_Detl.status IS 'The status of the loan';


-- Create BAMS_Card_Type_Detl
CREATE TABLE BAMS_Card_Type_Detl (
    card_type_id NUMBER(4) PRIMARY KEY,  -- A unique identifier for each card type
    type_name VARCHAR2(50) NOT NULL,  -- The name of the card type
    description VARCHAR2(200),  -- A description of the card type
    annual_fee NUMBER(8,2),  -- The annual fee associated with the card type
    reward_program VARCHAR2(100),  -- Details about the reward program associated with the card type
    interest_rate NUMBER(5,2) NOT NULL  -- The interest rate associated with the card type
);

-- Add comments to columns
COMMENT ON COLUMN BAMS_Card_Type_Detl.card_type_id IS 'A unique identifier for each card type';
COMMENT ON COLUMN BAMS_Card_Type_Detl.type_name IS 'The name of the card type';
COMMENT ON COLUMN BAMS_Card_Type_Detl.description IS 'A description of the card type';
COMMENT ON COLUMN BAMS_Card_Type_Detl.annual_fee IS 'The annual fee associated with the card type';
COMMENT ON COLUMN BAMS_Card_Type_Detl.reward_program IS 'Details about the reward program associated with the card type';
COMMENT ON COLUMN BAMS_Card_Type_Detl.interest_rate IS 'The interest rate associated with the card type';

-- Create a sequence for card_type_id
CREATE SEQUENCE seq_card_type_id
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Create BAMS_Cust_Crcd_Detl
CREATE TABLE BAMS_Cust_Crcd_Detl (
    card_id NUMBER(12) PRIMARY KEY,  -- A unique identifier for each credit card
    customer_id NUMBER(10) NOT NULL,  -- A foreign key that references the customer_id in the Customers table
    card_type_id NUMBER(4) NOT NULL,  -- A foreign key that references the card_type_id in the CardTypes table
    card_number VARCHAR2(16) UNIQUE NOT NULL,  -- The unique card number of the credit card
    expiration_date DATE NOT NULL,  -- The expiration date of the credit card
    cvv VARCHAR2(4) NOT NULL,  -- The CVV (Card Verification Value) of the credit card
    credit_limit NUMBER(8,2) NOT NULL,  -- The credit limit assigned to the credit card
    current_balance NUMBER(8,2) NOT NULL,  -- The current balance of the credit card
    issue_date DATE NOT NULL,  -- The date when the credit card was issued
    status VARCHAR2(20) CHECK (status IN ('active', 'inactive', 'blocked')) NOT NULL,  -- The status of the credit card
    CONSTRAINT fk_customer_cc
        FOREIGN KEY (customer_id) REFERENCES BAMS_Cust_Detl_Tabl(customer_id),  -- Foreign key constraint for customer_id
    CONSTRAINT fk_card_type_cc
        FOREIGN KEY (card_type_id) REFERENCES BAMS_Card_Type_Detl(card_type_id)  -- Foreign key constraint for card_type_id
);

-- Add comments to columns
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.card_id IS 'A unique identifier for each credit card';
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.customer_id IS 'A foreign key that references the customer_id in the Customers table';
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.card_type_id IS 'A foreign key that references the card_type_id in the CardTypes table';
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.card_number IS 'The unique card number of the credit card';
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.expiration_date IS 'The expiration date of the credit card';
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.cvv IS 'The CVV (Card Verification Value) of the credit card';
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.credit_limit IS 'The credit limit assigned to the credit card';
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.current_balance IS 'The current balance of the credit card';
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.issue_date IS 'The date when the credit card was issued';
COMMENT ON COLUMN BAMS_Cust_Crcd_Detl.status IS 'The status of the credit card';

-- Create a sequence for card_id
CREATE SEQUENCE seq_card_id
START WITH 1
INCREMENT BY 1
NOCACHE;


-- Create BAMS_Drcd_Card_Detl
CREATE TABLE BAMS_Drcd_Card_Detl (
    debit_card_id NUMBER(12) PRIMARY KEY,  -- A unique identifier for each debit card
    account_id NUMBER(12) NOT NULL,  -- A foreign key that references the account_id in the Accounts table
    card_type_id NUMBER(4) NOT NULL,  -- A foreign key that references the card_type_id in the CardTypes table
    card_number VARCHAR2(16) UNIQUE NOT NULL,  -- The unique card number of the debit card
    expiration_date DATE NOT NULL,  -- The expiration date of the debit card
    cvv VARCHAR2(4) NOT NULL,  -- The CVV (Card Verification Value) of the debit card
    daily_withdrawal_limit NUMBER(8,2) NOT NULL,  -- The daily withdrawal limit associated with the debit card
    issue_date DATE NOT NULL,  -- The date when the debit card was issued
    status VARCHAR2(20) CHECK (status IN ('active', 'inactive', 'blocked')) NOT NULL,  -- The status of the debit card
    CONSTRAINT fk_account_dc
        FOREIGN KEY (account_id) REFERENCES BAMS_Cust_Acct_Detl(account_id),  -- Foreign key constraint for account_id
    CONSTRAINT fk_card_type_dc
        FOREIGN KEY (card_type_id) REFERENCES BAMS_Card_Type_Detl(card_type_id)  -- Foreign key constraint for card_type_id
);

-- Add comments to columns
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.debit_card_id IS 'A unique identifier for each debit card';
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.account_id IS 'A foreign key that references the account_id in the Accounts table';
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.card_type_id IS 'A foreign key that references the card_type_id in the CardTypes table';
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.card_number IS 'The unique card number of the debit card';
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.expiration_date IS 'The expiration date of the debit card';
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.cvv IS 'The CVV (Card Verification Value) of the debit card';
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.daily_withdrawal_limit IS 'The daily withdrawal limit associated with the debit card';
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.issue_date IS 'The date when the debit card was issued';
COMMENT ON COLUMN BAMS_Drcd_Card_Detl.status IS 'The status of the debit card';

-- Create a sequence for debit_card_id
CREATE SEQUENCE seq_debit_card_id
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Create BAMS_Cust_Benf_Detl
CREATE TABLE BAMS_Cust_Benf_Detl (
    beneficiary_id NUMBER(10) PRIMARY KEY,  -- A unique identifier for each beneficiary
    account_id NUMBER(12) NOT NULL,  -- A foreign key that references the account_id in the Accounts table
    name VARCHAR2(100) NOT NULL,  -- The name of the beneficiary
    relationship VARCHAR2(50),  -- The relationship of the beneficiary to the account holder
    percentage NUMBER(5,2) NOT NULL,  -- The percentage of inheritance allocated to the beneficiary
    CONSTRAINT fk_account_ben
        FOREIGN KEY (account_id) REFERENCES BAMS_Cust_Acct_Detl(account_id)  -- Foreign key constraint for account_id
);

-- Add comments to columns
COMMENT ON COLUMN BAMS_Cust_Benf_Detl.beneficiary_id IS 'A unique identifier for each beneficiary';
COMMENT ON COLUMN BAMS_Cust_Benf_Detl.account_id IS 'A foreign key that references the account_id in the Accounts table';
COMMENT ON COLUMN BAMS_Cust_Benf_Detl.name IS 'The name of the beneficiary';
COMMENT ON COLUMN BAMS_Cust_Benf_Detl.relationship IS 'The relationship of the beneficiary to the account holder';
COMMENT ON COLUMN BAMS_Cust_Benf_Detl.percentage IS 'The percentage of inheritance allocated to the beneficiary';

-- Create a sequence for beneficiary_id
CREATE SEQUENCE seq_beneficiary_id
START WITH 1
INCREMENT BY 1
NOCACHE;


-- Create BAMS_Cust_Docm_Detl
CREATE TABLE BAMS_Cust_Docm_Detl (
    document_id NUMBER(12) PRIMARY KEY,  -- A unique identifier for each document
    customer_id NUMBER(10) NOT NULL,  -- A foreign key that references the customer_id in the Customers table
    document_type VARCHAR2(50) NOT NULL,  -- The type of the document (e.g., passport, driver's license)
    document_number VARCHAR2(50) NOT NULL,  -- The unique identifier or number associated with the document
    issue_date DATE,  -- The date when the document was issued
    expiry_date DATE,  -- The expiration date of the document
    document_status VARCHAR2(20) CHECK (document_status IN ('valid', 'expired', 'pending')),  -- The status of the document
    CONSTRAINT fk_customer_doc
        FOREIGN KEY (customer_id) REFERENCES BAMS_Cust_Detl_Tabl(customer_id)  -- Foreign key constraint for customer_id
);

-- Add comments to columns
COMMENT ON COLUMN BAMS_Cust_Docm_Detl.document_id IS 'A unique identifier for each document';
COMMENT ON COLUMN BAMS_Cust_Docm_Detl.customer_id IS 'A foreign key that references the customer_id in the Customers table';
COMMENT ON COLUMN BAMS_Cust_Docm_Detl.document_type IS 'The type of the document (e.g., passport, driver''s license)';
COMMENT ON COLUMN BAMS_Cust_Docm_Detl.document_number IS 'The unique identifier or number associated with the document';
COMMENT ON COLUMN BAMS_Cust_Docm_Detl.issue_date IS 'The date when the document was issued';
COMMENT ON COLUMN BAMS_Cust_Docm_Detl.expiry_date IS 'The expiration date of the document';
COMMENT ON COLUMN BAMS_Cust_Docm_Detl.document_status IS 'The status of the document (e.g., valid, expired, pending)';

-- Create a sequence for document_id
CREATE SEQUENCE seq_document_id
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Create BAMS_ATMs_detl_tabl
CREATE TABLE BAMS_ATMs_detl_tabl (
    atm_id NUMBER(6) PRIMARY KEY,  -- A unique identifier for each ATM
    location VARCHAR2(200) NOT NULL,  -- The location where the ATM is installed
    branch_id NUMBER(6) REFERENCES bams_bran_detl_tabl(branch_id),  -- A foreign key that references the branch_id in the Branches table
    head_office_id NUMBER(4) REFERENCES BAMS_Head_Ofsc_Detl(head_office_id),  -- A foreign key that references the head_office_id in the HeadOffice table
    status VARCHAR2(20) NOT NULL CHECK (status IN ('active', 'inactive', 'maintenance'))  -- The status of the ATM
);

-- Add comments to columns
COMMENT ON COLUMN BAMS_ATMs_detl_tabl.atm_id IS 'A unique identifier for each ATM';
COMMENT ON COLUMN BAMS_ATMs_detl_tabl.location IS 'The location where the ATM is installed';
COMMENT ON COLUMN BAMS_ATMs_detl_tabl.branch_id IS 'A foreign key that references the branch_id in the Branches table';
COMMENT ON COLUMN BAMS_ATMs_detl_tabl.head_office_id IS 'A foreign key that references the head_office_id in the HeadOffice table';
COMMENT ON COLUMN BAMS_ATMs_detl_tabl.status IS 'The status of the ATM (active, inactive, maintenance)';

-- Create a sequence for atm_id
CREATE SEQUENCE seq_atm_id
START WITH 1
INCREMENT BY 1
NOCACHE;


-- Create BAMS_ATMS_Tran_DETL
CREATE TABLE BAMS_ATMS_Tran_DETL (
    atm_transaction_id NUMBER(16) PRIMARY KEY,  -- A unique identifier for each ATM transaction
    atm_id NUMBER(6) NOT NULL,  -- A foreign key that references the atm_id in the ATMs table
    account_id NUMBER(12) NOT NULL,  -- A foreign key that references the account_id in the Accounts table
    transaction_type VARCHAR2(20) NOT NULL,  -- The type of transaction performed at the ATM (e.g., withdrawal, deposit)
    amount NUMBER(8,2) NOT NULL,  -- The amount involved in the transaction
    transaction_date TIMESTAMP NOT NULL,  -- The date and time when the transaction occurred
    CONSTRAINT fk_atm_id_tran
        FOREIGN KEY (atm_id) REFERENCES BAMS_ATMs_detl_tabl(atm_id),  -- Foreign key constraint for atm_id
    CONSTRAINT fk_account_id_tran
        FOREIGN KEY (account_id) REFERENCES BAMS_Cust_Acct_Detl(account_id)  -- Foreign key constraint for account_id
);

-- Add comments to columns
COMMENT ON COLUMN BAMS_ATMS_Tran_DETL.atm_transaction_id IS 'A unique identifier for each ATM transaction';
COMMENT ON COLUMN BAMS_ATMS_Tran_DETL.atm_id IS 'A foreign key that references the atm_id in the ATMs table';
COMMENT ON COLUMN BAMS_ATMS_Tran_DETL.account_id IS 'A foreign key that references the account_id in the Accounts table';
COMMENT ON COLUMN BAMS_ATMS_Tran_DETL.transaction_type IS 'The type of transaction performed at the ATM (e.g., withdrawal, deposit)';
COMMENT ON COLUMN BAMS_ATMS_Tran_DETL.amount IS 'The amount involved in the transaction';
COMMENT ON COLUMN BAMS_ATMS_Tran_DETL.transaction_date IS 'The date and time when the transaction occurred';

-- Create a sequence for atm_transaction_id
CREATE SEQUENCE seq_atm_transaction_id
START WITH 1
INCREMENT BY 1
NOCACHE;

