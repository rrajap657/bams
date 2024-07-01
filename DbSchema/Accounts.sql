REM INSERTING 
SET DEFINE OFF;

--BA-8-- Accounts table not created

create table BAMS_Cust_Acct_Detl(account_id  NUMBER(12),
                                customer_id NUMBER(10) not null,
                                account_type_id  NUMBER(4) not null,
                                account_number  VARCHAR2(20) not null,
                                balance  NUMBER(12,2) not null,
                                opening_date  DATE not null,
                                status  VARCHAR2(10) not null,
                                 branch_id  NUMBER(6) not null,
                                 CONSTRAINT pk_acc_id PRIMARY KEY (account_id),                         
                                constraint uk_acc_no unique(account_number),                         
                                constraint fk_cust_id foreign key (customer_id ) references Customers(customer_id),
                                constraint fk_acc_id foreign key (account_type_id ) references AccountTypes(account_type_id),
                                constraint ck_stat check(status in('active','inactive'))
                                );