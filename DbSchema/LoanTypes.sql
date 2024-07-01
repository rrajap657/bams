REM INSERTING 
SET DEFINE OFF;


--BA -11--LoanTypes Table
create table BAMS_Loan_Type_Detl(loan_type_id  NUMBER(4),
                                type_name  VARCHAR2(50) not null,
                                description  VARCHAR2(200), 
                                min_credit_score  NUMBER(3),
                                interest_rate  NUMBER(5,2) not null,
                                CONSTRAINT pk_loan_id PRIMARY KEY (loan_type_id));


  create sequence seq_loan_type_id start with 1 increment by 1 maxvalue 9999;

