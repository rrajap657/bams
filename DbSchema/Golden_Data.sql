-- BAMS_Head_Ofsc_Detl
INSERT INTO BAMS_Head_Ofsc_Detl (head_office_id, name, address, phone_number, email, established_date) VALUES
(seq_hofc_id.NEXTVAL, 'State Bank of India HO', 'Nariman Point, Mumbai', '022-22740000', 'ho@sbi.co.in', TO_DATE('1955-07-01', 'YYYY-MM-DD'));
INSERT INTO BAMS_Head_Ofsc_Detl (head_office_id, name, address, phone_number, email, established_date) VALUES
(seq_hofc_id.NEXTVAL, 'ICICI Bank HO', 'BKC, Mumbai', '022-33667777', 'ho@icicibank.com', TO_DATE('1994-06-05', 'YYYY-MM-DD'));
INSERT INTO BAMS_Head_Ofsc_Detl (head_office_id, name, address, phone_number, email, established_date) VALUES
(seq_hofc_id.NEXTVAL, 'HDFC Bank HO', 'Worli, Mumbai', '022-30751234', 'ho@hdfcbank.com', TO_DATE('1994-08-30', 'YYYY-MM-DD'));
INSERT INTO BAMS_Head_Ofsc_Detl (head_office_id, name, address, phone_number, email, established_date) VALUES
(seq_hofc_id.NEXTVAL, 'Axis Bank HO', 'Worli, Mumbai', '022-24252525', 'ho@axisbank.com', TO_DATE('1993-12-03', 'YYYY-MM-DD'));
INSERT INTO BAMS_Head_Ofsc_Detl (head_office_id, name, address, phone_number, email, established_date) VALUES
(seq_hofc_id.NEXTVAL, 'Punjab National Bank HO', 'Dwarka, New Delhi', '011-28044857', 'ho@pnbindia.in', TO_DATE('1894-04-12', 'YYYY-MM-DD'));
INSERT INTO BAMS_Head_Ofsc_Detl (head_office_id, name, address, phone_number, email, established_date) VALUES
(seq_hofc_id.NEXTVAL, 'Bank of Baroda HO', 'Vadodara, Gujarat', '0265-2316792', 'ho@bankofbaroda.com', TO_DATE('1908-07-20', 'YYYY-MM-DD'));
INSERT INTO BAMS_Head_Ofsc_Detl (head_office_id, name, address, phone_number, email, established_date) VALUES
(seq_hofc_id.NEXTVAL, 'Canara Bank HO', 'J.C. Road, Bengaluru', '080-22223165', 'ho@canarabank.com', TO_DATE('1906-07-01', 'YYYY-MM-DD'));
INSERT INTO BAMS_Head_Ofsc_Detl (head_office_id, name, address, phone_number, email, established_date) VALUES
(seq_hofc_id.NEXTVAL, 'Union Bank of India HO', 'Nariman Point, Mumbai', '022-22892000', 'ho@unionbankofindia.com', TO_DATE('1919-11-11', 'YYYY-MM-DD'));
INSERT INTO BAMS_Head_Ofsc_Detl (head_office_id, name, address, phone_number, email, established_date) VALUES
(seq_hofc_id.NEXTVAL, 'Kotak Mahindra Bank HO', 'BKC, Mumbai', '022-61660000', 'ho@kotak.com', TO_DATE('2003-03-22', 'YYYY-MM-DD'));
INSERT INTO BAMS_Head_Ofsc_Detl (head_office_id, name, address, phone_number, email, established_date) VALUES
(seq_hofc_id.NEXTVAL, 'IndusInd Bank HO', 'Prabhadevi, Mumbai', '022-66412200', 'ho@indusind.com', TO_DATE('1994-04-04', 'YYYY-MM-DD'));

-- bams_states_detl_tabl
INSERT INTO bams_states_detl_tabl (state_id, state_name, state_code, head_office_id) VALUES
(seq_state_id.NEXTVAL, 'Maharashtra', 'MH', 1);
INSERT INTO bams_states_detl_tabl (state_id, state_name, state_code, head_office_id) VALUES
(seq_state_id.NEXTVAL, 'Delhi', 'DL', 5);
INSERT INTO bams_states_detl_tabl (state_id, state_name, state_code, head_office_id) VALUES
(seq_state_id.NEXTVAL, 'Gujarat', 'GJ', 6);
INSERT INTO bams_states_detl_tabl (state_id, state_name, state_code, head_office_id) VALUES
(seq_state_id.NEXTVAL, 'Karnataka', 'KA', 7);
INSERT INTO bams_states_detl_tabl (state_id, state_name, state_code, head_office_id) VALUES
(seq_state_id.NEXTVAL, 'Tamil Nadu', 'TN', 3);
INSERT INTO bams_states_detl_tabl (state_id, state_name, state_code, head_office_id) VALUES
(seq_state_id.NEXTVAL, 'Uttar Pradesh', 'UP', 2);
INSERT INTO bams_states_detl_tabl (state_id, state_name, state_code, head_office_id) VALUES
(seq_state_id.NEXTVAL, 'West Bengal', 'WB', 4);
INSERT INTO bams_states_detl_tabl (state_id, state_name, state_code, head_office_id) VALUES
(seq_state_id.NEXTVAL, 'Rajasthan', 'RJ', 8);
INSERT INTO bams_states_detl_tabl (state_id, state_name, state_code, head_office_id) VALUES
(seq_state_id.NEXTVAL, 'Punjab', 'PB', 9);
INSERT INTO bams_states_detl_tabl (state_id, state_name, state_code, head_office_id) VALUES
(seq_state_id.NEXTVAL, 'Kerala', 'KL', 10);

-- bams_zone_detl_tabl
INSERT INTO bams_zone_detl_tabl (zone_id, zone_name, state_id) VALUES
(seq_zone_id.NEXTVAL, 'Mumbai', 1);
INSERT INTO bams_zone_detl_tabl (zone_id, zone_name, state_id) VALUES
(seq_zone_id.NEXTVAL, 'Delhi NCR', 2);
INSERT INTO bams_zone_detl_tabl (zone_id, zone_name, state_id) VALUES
(seq_zone_id.NEXTVAL, 'Ahmedabad', 3);
INSERT INTO bams_zone_detl_tabl (zone_id, zone_name, state_id) VALUES
(seq_zone_id.NEXTVAL, 'Bengaluru', 4);
INSERT INTO bams_zone_detl_tabl (zone_id, zone_name, state_id) VALUES
(seq_zone_id.NEXTVAL, 'Chennai', 5);
INSERT INTO bams_zone_detl_tabl (zone_id, zone_name, state_id) VALUES
(seq_zone_id.NEXTVAL, 'Lucknow', 6);
INSERT INTO bams_zone_detl_tabl (zone_id, zone_name, state_id) VALUES
(seq_zone_id.NEXTVAL, 'Kolkata', 7);
INSERT INTO bams_zone_detl_tabl (zone_id, zone_name, state_id) VALUES
(seq_zone_id.NEXTVAL, 'Jaipur', 8);
INSERT INTO bams_zone_detl_tabl (zone_id, zone_name, state_id) VALUES
(seq_zone_id.NEXTVAL, 'Chandigarh', 9);
INSERT INTO bams_zone_detl_tabl (zone_id, zone_name, state_id) VALUES
(seq_zone_id.NEXTVAL, 'Kochi', 10);

-- bams_bran_detl_tabl
INSERT INTO bams_bran_detl_tabl (branch_id, branch_name, address, phone_number, state_id, zone_id, head_office_id) VALUES
(seq_branch_id.NEXTVAL, 'SBI Andheri', 'Andheri West, Mumbai', '022-26280720', 1, 1, 1);
INSERT INTO bams_bran_detl_tabl (branch_id, branch_name, address, phone_number, state_id, zone_id, head_office_id) VALUES
(seq_branch_id.NEXTVAL, 'ICICI Connaught Place', 'Connaught Place, New Delhi', '011-23416000', 2, 2, 2);
INSERT INTO bams_bran_detl_tabl (branch_id, branch_name, address, phone_number, state_id, zone_id, head_office_id) VALUES
(seq_branch_id.NEXTVAL, 'HDFC Vadodara', 'Alkapuri, Vadodara', '0265-6621700', 3, 3, 3);
INSERT INTO bams_bran_detl_tabl (branch_id, branch_name, address, phone_number, state_id, zone_id, head_office_id) VALUES
(seq_branch_id.NEXTVAL, 'Axis Bank MG Road', 'MG Road, Bengaluru', '080-25320400', 4, 4, 4);
INSERT INTO bams_bran_detl_tabl (branch_id, branch_name, address, phone_number, state_id, zone_id, head_office_id) VALUES
(seq_branch_id.NEXTVAL, 'PNB T Nagar', 'T Nagar, Chennai', '044-24314565', 5, 5, 5);
INSERT INTO bams_bran_detl_tabl (branch_id, branch_name, address, phone_number, state_id, zone_id, head_office_id) VALUES
(seq_branch_id.NEXTVAL, 'Bank of Baroda Hazratganj', 'Hazratganj, Lucknow', '0522-2622244', 6, 6, 6);
INSERT INTO bams_bran_detl_tabl (branch_id, branch_name, address, phone_number, state_id, zone_id, head_office_id) VALUES
(seq_branch_id.NEXTVAL, 'Canara Bank Park Street', 'Park Street, Kolkata', '033-22801980', 7, 7, 7);
INSERT INTO bams_bran_detl_tabl (branch_id, branch_name, address, phone_number, state_id, zone_id, head_office_id) VALUES
(seq_branch_id.NEXTVAL, 'Union Bank MI Road', 'MI Road, Jaipur', '0141-2372133', 8, 8, 8);
INSERT INTO bams_bran_detl_tabl (branch_id, branch_name, address, phone_number, state_id, zone_id, head_office_id) VALUES
(seq_branch_id.NEXTVAL, 'Kotak Mahindra Sector 17', 'Sector 17, Chandigarh', '0172-5055555', 9, 9, 9);
INSERT INTO bams_bran_detl_tabl (branch_id, branch_name, address, phone_number, state_id, zone_id, head_office_id) VALUES
(seq_branch_id.NEXTVAL, 'IndusInd Bank MG Road', 'MG Road, Kochi', '0484-4433111', 10, 10, 10);

-- bams_empl_detl_tabl
INSERT INTO bams_empl_detl_tabl (employee_id, first_name, last_name, position, hire_date, branch_id, head_office_id) VALUES
(seq_employee_id.NEXTVAL, 'Rahul', 'Sharma', 'Branch Manager', TO_DATE('2010-05-15', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO bams_empl_detl_tabl (employee_id, first_name, last_name, position, hire_date, branch_id, head_office_id) VALUES
(seq_employee_id.NEXTVAL, 'Priya', 'Patel', 'Loan Officer', TO_DATE('2015-07-22', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO bams_empl_detl_tabl (employee_id, first_name, last_name, position, hire_date, branch_id, head_office_id) VALUES
(seq_employee_id.NEXTVAL, 'Amit', 'Singh', 'Teller', TO_DATE('2018-03-10', 'YYYY-MM-DD'), 3, NULL);
INSERT INTO bams_empl_detl_tabl (employee_id, first_name, last_name, position, hire_date, branch_id, head_office_id) VALUES
(seq_employee_id.NEXTVAL, 'Sneha', 'Gupta', 'Customer Service Representative', TO_DATE('2019-11-05', 'YYYY-MM-DD'), 4, NULL);
INSERT INTO bams_empl_detl_tabl (employee_id, first_name, last_name, position, hire_date, branch_id, head_office_id) VALUES
(seq_employee_id.NEXTVAL, 'Vikram', 'Reddy', 'Investment Advisor', TO_DATE('2017-09-18', 'YYYY-MM-DD'), 5, NULL);
INSERT INTO bams_empl_detl_tabl (employee_id, first_name, last_name, position, hire_date, branch_id, head_office_id) VALUES
(seq_employee_id.NEXTVAL, 'Anita', 'Desai', 'Operations Manager', TO_DATE('2012-01-30', 'YYYY-MM-DD'), NULL, 1);
INSERT INTO bams_empl_detl_tabl (employee_id, first_name, last_name, position, hire_date, branch_id, head_office_id) VALUES
(seq_employee_id.NEXTVAL, 'Rajesh', 'Kumar', 'Risk Analyst', TO_DATE('2016-06-14', 'YYYY-MM-DD'), NULL, 2);
INSERT INTO bams_empl_detl_tabl (employee_id, first_name, last_name, position, hire_date, branch_id, head_office_id) VALUES
(seq_employee_id.NEXTVAL, 'Meera', 'Chopra', 'HR Manager', TO_DATE('2014-08-25', 'YYYY-MM-DD'), NULL, 3);
INSERT INTO bams_empl_detl_tabl (employee_id, first_name, last_name, position, hire_date, branch_id, head_office_id) VALUES
(seq_employee_id.NEXTVAL, 'Sanjay', 'Joshi', 'IT Specialist', TO_DATE('2020-02-03', 'YYYY-MM-DD'), NULL, 4);
INSERT INTO bams_empl_detl_tabl (employee_id, first_name, last_name, position, hire_date, branch_id, head_office_id) VALUES
(seq_employee_id.NEXTVAL, 'Sanjay', 'Joshi', 'IT Specialist', TO_DATE('2020-02-03', 'YYYY-MM-DD'), NULL, 4);
INSERT INTO bams_empl_detl_tabl (employee_id, first_name, last_name, position, hire_date, branch_id, head_office_id) VALUES
(seq_employee_id.NEXTVAL, 'Neha', 'Kapoor', 'Marketing Executive', TO_DATE('2018-12-11', 'YYYY-MM-DD'), NULL, 5);

-- BAMS_Cust_Detl_Tabl
INSERT INTO BAMS_Cust_Detl_Tabl (customer_id, first_name, last_name, date_of_birth, address, phone_number, email, ssn, state_id, zone_id, branch_id) VALUES
(seq_customer_id.NEXTVAL, 'Arun', 'Mehta', TO_DATE('1985-07-15', 'YYYY-MM-DD'), 'Bandra West, Mumbai', '9876543210', 'arun.mehta@email.com', '123-45-6789', 1, 1, 1);
INSERT INTO BAMS_Cust_Detl_Tabl (customer_id, first_name, last_name, date_of_birth, address, phone_number, email, ssn, state_id, zone_id, branch_id) VALUES
(seq_customer_id.NEXTVAL, 'Kavita', 'Sharma', TO_DATE('1990-03-22', 'YYYY-MM-DD'), 'Vasant Kunj, New Delhi', '9876543211', 'kavita.sharma@email.com', '234-56-7890', 2, 2, 2);
INSERT INTO BAMS_Cust_Detl_Tabl (customer_id, first_name, last_name, date_of_birth, address, phone_number, email, ssn, state_id, zone_id, branch_id) VALUES
(seq_customer_id.NEXTVAL, 'Raj', 'Patel', TO_DATE('1988-11-10', 'YYYY-MM-DD'), 'Vastrapur, Ahmedabad', '9876543212', 'raj.patel@email.com', '345-67-8901', 3, 3, 3);
INSERT INTO BAMS_Cust_Detl_Tabl (customer_id, first_name, last_name, date_of_birth, address, phone_number, email, ssn, state_id, zone_id, branch_id) VALUES
(seq_customer_id.NEXTVAL, 'Anjali', 'Nair', TO_DATE('1992-09-05', 'YYYY-MM-DD'), 'Indiranagar, Bengaluru', '9876543213', 'anjali.nair@email.com', '456-78-9012', 4, 4, 4);
INSERT INTO BAMS_Cust_Detl_Tabl (customer_id, first_name, last_name, date_of_birth, address, phone_number, email, ssn, state_id, zone_id, branch_id) VALUES
(seq_customer_id.NEXTVAL, 'Vijay', 'Subramanian', TO_DATE('1987-06-18', 'YYYY-MM-DD'), 'Adyar, Chennai', '9876543214', 'vijay.subramanian@email.com', '567-89-0123', 5, 5, 5);
INSERT INTO BAMS_Cust_Detl_Tabl (customer_id, first_name, last_name, date_of_birth, address, phone_number, email, ssn, state_id, zone_id, branch_id) VALUES
(seq_customer_id.NEXTVAL, 'Pooja', 'Agarwal', TO_DATE('1993-12-30', 'YYYY-MM-DD'), 'Gomti Nagar, Lucknow', '9876543215', 'pooja.agarwal@email.com', '678-90-1234', 6, 6, 6);
INSERT INTO BAMS_Cust_Detl_Tabl (customer_id, first_name, last_name, date_of_birth, address, phone_number, email, ssn, state_id, zone_id, branch_id) VALUES
(seq_customer_id.NEXTVAL, 'Amit', 'Banerjee', TO_DATE('1986-04-25', 'YYYY-MM-DD'), 'Salt Lake, Kolkata', '9876543216', 'amit.banerjee@email.com', '789-01-2345', 7, 7, 7);
INSERT INTO BAMS_Cust_Detl_Tabl (customer_id, first_name, last_name, date_of_birth, address, phone_number, email, ssn, state_id, zone_id, branch_id) VALUES
(seq_customer_id.NEXTVAL, 'Shalini', 'Gupta', TO_DATE('1991-08-12', 'YYYY-MM-DD'), 'C Scheme, Jaipur', '9876543217', 'shalini.gupta@email.com', '890-12-3456', 8, 8, 8);
INSERT INTO BAMS_Cust_Detl_Tabl (customer_id, first_name, last_name, date_of_birth, address, phone_number, email, ssn, state_id, zone_id, branch_id) VALUES
(seq_customer_id.NEXTVAL, 'Ravi', 'Singh', TO_DATE('1989-02-14', 'YYYY-MM-DD'), 'Sector 17, Chandigarh', '9876543218', 'ravi.singh@email.com', '901-23-4567', 9, 9, 9);
INSERT INTO BAMS_Cust_Detl_Tabl (customer_id, first_name, last_name, date_of_birth, address, phone_number, email, ssn, state_id, zone_id, branch_id) VALUES
(seq_customer_id.NEXTVAL, 'Deepa', 'Pillai', TO_DATE('1994-10-20', 'YYYY-MM-DD'), 'Panampilly Nagar, Kochi', '9876543219', 'deepa.pillai@email.com', '012-34-5678', 10, 10, 10);

-- BAMS_Acct_Type_Detl
INSERT INTO BAMS_Acct_Type_Detl (account_type_id, type_name, description, interest_rate) VALUES
(seq_account_type_id.NEXTVAL, 'Savings Account', 'Basic savings account with interest', 3.5);
INSERT INTO BAMS_Acct_Type_Detl (account_type_id, type_name, description, interest_rate) VALUES
(seq_account_type_id.NEXTVAL, 'Current Account', 'Business account with no interest', 0);
INSERT INTO BAMS_Acct_Type_Detl (account_type_id, type_name, description, interest_rate) VALUES
(seq_account_type_id.NEXTVAL, 'Fixed Deposit', 'Term deposit with higher interest rate', 6.5);
INSERT INTO BAMS_Acct_Type_Detl (account_type_id, type_name, description, interest_rate) VALUES
(seq_account_type_id.NEXTVAL, 'Recurring Deposit', 'Regular savings with fixed monthly deposits', 5.5);
INSERT INTO BAMS_Acct_Type_Detl (account_type_id, type_name, description, interest_rate) VALUES
(seq_account_type_id.NEXTVAL, 'NRI Account', 'Account for Non-Resident Indians', 4.0);
INSERT INTO BAMS_Acct_Type_Detl (account_type_id, type_name, description, interest_rate) VALUES
(seq_account_type_id.NEXTVAL, 'Salary Account', 'Account for receiving salary with additional benefits', 3.75);
INSERT INTO BAMS_Acct_Type_Detl (account_type_id, type_name, description, interest_rate) VALUES
(seq_account_type_id.NEXTVAL, 'Senior Citizen Account', 'Savings account for senior citizens with higher interest', 4.5);
INSERT INTO BAMS_Acct_Type_Detl (account_type_id, type_name, description, interest_rate) VALUES
(seq_account_type_id.NEXTVAL, 'Student Account', 'Account for students with minimal charges', 3.0);
INSERT INTO BAMS_Acct_Type_Detl (account_type_id, type_name, description, interest_rate) VALUES
(seq_account_type_id.NEXTVAL, 'Women''s Savings Account', 'Savings account for women with additional benefits', 4.0);
INSERT INTO BAMS_Acct_Type_Detl (account_type_id, type_name, description, interest_rate) VALUES
(seq_account_type_id.NEXTVAL, 'Zero Balance Account', 'Account with no minimum balance requirement', 2.5);

-- BAMS_Cust_Acct_Detl
INSERT INTO BAMS_Cust_Acct_Detl (account_id, customer_id, account_type_id, account_number, balance, opening_date, status, branch_id) VALUES
(seq_account_id.NEXTVAL, 1, 1, '1234567890', 50000.00, TO_DATE('2020-01-15', 'YYYY-MM-DD'), 'active', 1);
INSERT INTO BAMS_Cust_Acct_Detl (account_id, customer_id, account_type_id, account_number, balance, opening_date, status, branch_id) VALUES
(seq_account_id.NEXTVAL, 2, 2, '2345678901', 100000.00, TO_DATE('2019-07-22', 'YYYY-MM-DD'), 'active', 2);
INSERT INTO BAMS_Cust_Acct_Detl (account_id, customer_id, account_type_id, account_number, balance, opening_date, status, branch_id) VALUES
(seq_account_id.NEXTVAL, 3, 3, '3456789012', 200000.00, TO_DATE('2021-03-10', 'YYYY-MM-DD'), 'active', 3);
INSERT INTO BAMS_Cust_Acct_Detl (account_id, customer_id, account_type_id, account_number, balance, opening_date, status, branch_id) VALUES
(seq_account_id.NEXTVAL, 4, 4, '4567890123', 75000.00, TO_DATE('2020-11-05', 'YYYY-MM-DD'), 'active', 4);
INSERT INTO BAMS_Cust_Acct_Detl (account_id, customer_id, account_type_id, account_number, balance, opening_date, status, branch_id) VALUES
(seq_account_id.NEXTVAL, 5, 5, '5678901234', 300000.00, TO_DATE('2018-09-18', 'YYYY-MM-DD'), 'active', 5);
INSERT INTO BAMS_Cust_Acct_Detl (account_id, customer_id, account_type_id, account_number, balance, opening_date, status, branch_id) VALUES
(seq_account_id.NEXTVAL, 6, 6, '6789012345', 80000.00, TO_DATE('2021-06-30', 'YYYY-MM-DD'), 'active', 6);
INSERT INTO BAMS_Cust_Acct_Detl (account_id, customer_id, account_type_id, account_number, balance, opening_date, status, branch_id) VALUES
(seq_account_id.NEXTVAL, 7, 7, '7890123456', 150000.00, TO_DATE('2019-12-12', 'YYYY-MM-DD'), 'active', 7);
INSERT INTO BAMS_Cust_Acct_Detl (account_id, customer_id, account_type_id, account_number, balance, opening_date, status, branch_id) VALUES
(seq_account_id.NEXTVAL, 8, 8, '8901234567', 25000.00, TO_DATE('2022-02-28', 'YYYY-MM-DD'), 'active', 8);
INSERT INTO BAMS_Cust_Acct_Detl (account_id, customer_id, account_type_id, account_number, balance, opening_date, status, branch_id) VALUES
(seq_account_id.NEXTVAL, 9, 9, '9012345678', 90000.00, TO_DATE('2020-08-14', 'YYYY-MM-DD'), 'active', 9);
INSERT INTO BAMS_Cust_Acct_Detl (account_id, customer_id, account_type_id, account_number, balance, opening_date, status, branch_id) VALUES
(seq_account_id.NEXTVAL, 10, 10, '0123456789', 5000.00, TO_DATE('2021-10-01', 'YYYY-MM-DD'), 'active', 10);

-- bams_Tran_Type_Detl
INSERT INTO bams_Tran_Type_Detl (transaction_type_id, type_name, description) VALUES
(seq_transaction_type_id.NEXTVAL, 'Deposit', 'Cash or cheque deposit');
INSERT INTO bams_Tran_Type_Detl (transaction_type_id, type_name, description) VALUES
(seq_transaction_type_id.NEXTVAL, 'Withdrawal', 'Cash withdrawal');
INSERT INTO bams_Tran_Type_Detl (transaction_type_id, type_name, description) VALUES
(seq_transaction_type_id.NEXTVAL, 'Transfer', 'Fund transfer between accounts');
INSERT INTO bams_Tran_Type_Detl (transaction_type_id, type_name, description) VALUES
(seq_transaction_type_id.NEXTVAL, 'Bill Payment', 'Payment of utility bills');
INSERT INTO bams_Tran_Type_Detl (transaction_type_id, type_name, description) VALUES
(seq_transaction_type_id.NEXTVAL, 'Loan Disbursement', 'Disbursement of approved loan amount');
INSERT INTO bams_Tran_Type_Detl (transaction_type_id, type_name, description) VALUES
(seq_transaction_type_id.NEXTVAL, 'Loan Repayment', 'Repayment of loan installment');
INSERT INTO bams_Tran_Type_Detl (transaction_type_id, type_name, description) VALUES
(seq_transaction_type_id.NEXTVAL, 'Interest Credit', 'Credit of interest to savings account');
INSERT INTO bams_Tran_Type_Detl (transaction_type_id, type_name, description) VALUES
(seq_transaction_type_id.NEXTVAL, 'Charges Debit', 'Debit of bank charges or fees');
INSERT INTO bams_Tran_Type_Detl (transaction_type_id, type_name, description) VALUES
(seq_transaction_type_id.NEXTVAL, 'Cheque Clearance', 'Clearance of deposited cheque');
INSERT INTO bams_Tran_Type_Detl (transaction_type_id, type_name, description) VALUES
(seq_transaction_type_id.NEXTVAL, 'Cheque Clearance', 'Clearance of deposited cheque');
INSERT INTO bams_Tran_Type_Detl (transaction_type_id, type_name, description) VALUES
(seq_transaction_type_id.NEXTVAL, 'Card Transaction', 'Debit or credit card transaction');

-- BAMS_daly_tran_detl
INSERT INTO BAMS_daly_tran_detl (transaction_id, account_id, transaction_type_id, amount, transaction_date, description) VALUES
(seq_transaction_id.NEXTVAL, 1, 1, 10000.00, SYSTIMESTAMP, 'Salary deposit');
INSERT INTO BAMS_daly_tran_detl (transaction_id, account_id, transaction_type_id, amount, transaction_date, description) VALUES
(seq_transaction_id.NEXTVAL, 2, 2, 5000.00, SYSTIMESTAMP, 'ATM withdrawal');
INSERT INTO BAMS_daly_tran_detl (transaction_id, account_id, transaction_type_id, amount, transaction_date, description) VALUES
(seq_transaction_id.NEXTVAL, 3, 3, 15000.00, SYSTIMESTAMP, 'Fund transfer to savings account');
INSERT INTO BAMS_daly_tran_detl (transaction_id, account_id, transaction_type_id, amount, transaction_date, description) VALUES
(seq_transaction_id.NEXTVAL, 4, 4, 2000.00, SYSTIMESTAMP, 'Electricity bill payment');
INSERT INTO BAMS_daly_tran_detl (transaction_id, account_id, transaction_type_id, amount, transaction_date, description) VALUES
(seq_transaction_id.NEXTVAL, 5, 5, 100000.00, SYSTIMESTAMP, 'Home loan disbursement');
INSERT INTO BAMS_daly_tran_detl (transaction_id, account_id, transaction_type_id, amount, transaction_date, description) VALUES
(seq_transaction_id.NEXTVAL, 6, 6, 8000.00, SYSTIMESTAMP, 'Car loan EMI payment');
INSERT INTO BAMS_daly_tran_detl (transaction_id, account_id, transaction_type_id, amount, transaction_date, description) VALUES
(seq_transaction_id.NEXTVAL, 7, 7, 500.00, SYSTIMESTAMP, 'Savings account interest credit');
INSERT INTO BAMS_daly_tran_detl (transaction_id, account_id, transaction_type_id, amount, transaction_date, description) VALUES
(seq_transaction_id.NEXTVAL, 8, 8, 100.00, SYSTIMESTAMP, 'Annual maintenance charge debit');
INSERT INTO BAMS_daly_tran_detl (transaction_id, account_id, transaction_type_id, amount, transaction_date, description) VALUES
(seq_transaction_id.NEXTVAL, 9, 9, 25000.00, SYSTIMESTAMP, 'Cheque deposit clearance');
INSERT INTO BAMS_daly_tran_detl (transaction_id, account_id, transaction_type_id, amount, transaction_date, description) VALUES
(seq_transaction_id.NEXTVAL, 10, 10, 3000.00, SYSTIMESTAMP, 'Debit card purchase at retail store');

-- BAMS_Loan_Type_Detl
INSERT INTO BAMS_Loan_Type_Detl (loan_type_id, type_name, description, min_credit_score, interest_rate) VALUES
(seq_loan_type_id.NEXTVAL, 'Home Loan', 'Loan for purchasing or constructing a house', 700, 7.50);
INSERT INTO BAMS_Loan_Type_Detl (loan_type_id, type_name, description, min_credit_score, interest_rate) VALUES
(seq_loan_type_id.NEXTVAL, 'Car Loan', 'Loan for purchasing a vehicle', 650, 8.75);
INSERT INTO BAMS_Loan_Type_Detl (loan_type_id, type_name, description, min_credit_score, interest_rate) VALUES
(seq_loan_type_id.NEXTVAL, 'Personal Loan', 'Unsecured loan for personal expenses', 680, 12.00);
INSERT INTO BAMS_Loan_Type_Detl (loan_type_id, type_name, description, min_credit_score, interest_rate) VALUES
(seq_loan_type_id.NEXTVAL, 'Education Loan', 'Loan for higher education expenses', 600, 9.50);
INSERT INTO BAMS_Loan_Type_Detl (loan_type_id, type_name, description, min_credit_score, interest_rate) VALUES
(seq_loan_type_id.NEXTVAL, 'Business Loan', 'Loan for business expansion or working capital', 720, 11.00);
INSERT INTO BAMS_Loan_Type_Detl (loan_type_id, type_name, description, min_credit_score, interest_rate) VALUES
(seq_loan_type_id.NEXTVAL, 'Gold Loan', 'Loan against gold jewelry', 600, 10.50);
INSERT INTO BAMS_Loan_Type_Detl (loan_type_id, type_name, description, min_credit_score, interest_rate) VALUES
(seq_loan_type_id.NEXTVAL, 'Agriculture Loan', 'Loan for farmers and agricultural activities', 620, 7.00);
INSERT INTO BAMS_Loan_Type_Detl (loan_type_id, type_name, description, min_credit_score, interest_rate) VALUES
(seq_loan_type_id.NEXTVAL, 'Overdraft', 'Credit facility linked to current account', 700, 13.50);
INSERT INTO BAMS_Loan_Type_Detl (loan_type_id, type_name, description, min_credit_score, interest_rate) VALUES
(seq_loan_type_id.NEXTVAL, 'Two-Wheeler Loan', 'Loan for purchasing a motorcycle or scooter', 630, 9.75);
INSERT INTO BAMS_Loan_Type_Detl (loan_type_id, type_name, description, min_credit_score, interest_rate) VALUES
(seq_loan_type_id.NEXTVAL, 'Loan Against Property', 'Loan against residential or commercial property', 750, 8.25);

-- BAMS_Cust_Loan_Detl
INSERT INTO BAMS_Cust_Loan_Detl (loan_id, customer_id, loan_type_id, amount, start_date, end_date, status) VALUES
(seq_loan_id.NEXTVAL, 1, 1, 2000000.00, TO_DATE('2022-01-15', 'YYYY-MM-DD'), TO_DATE('2042-01-15', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Loan_Detl (loan_id, customer_id, loan_type_id, amount, start_date, end_date, status) VALUES
(seq_loan_id.NEXTVAL, 2, 2, 800000.00, TO_DATE('2021-07-22', 'YYYY-MM-DD'), TO_DATE('2026-07-22', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Loan_Detl (loan_id, customer_id, loan_type_id, amount, start_date, end_date, status) VALUES
(seq_loan_id.NEXTVAL, 3, 3, 500000.00, TO_DATE('2022-03-10', 'YYYY-MM-DD'), TO_DATE('2025-03-10', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Loan_Detl (loan_id, customer_id, loan_type_id, amount, start_date, end_date, status) VALUES
(seq_loan_id.NEXTVAL, 4, 4, 1000000.00, TO_DATE('2021-09-05', 'YYYY-MM-DD'), TO_DATE('2026-09-05', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Loan_Detl (loan_id, customer_id, loan_type_id, amount, start_date, end_date, status) VALUES
(seq_loan_id.NEXTVAL, 5, 5, 1500000.00, TO_DATE('2022-06-18', 'YYYY-MM-DD'), TO_DATE('2027-06-18', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Loan_Detl (loan_id, customer_id, loan_type_id, amount, start_date, end_date, status) VALUES
(seq_loan_id.NEXTVAL, 6, 6, 300000.00, TO_DATE('2021-12-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Loan_Detl (loan_id, customer_id, loan_type_id, amount, start_date, end_date, status) VALUES
(seq_loan_id.NEXTVAL, 7, 7, 700000.00, TO_DATE('2022-04-25', 'YYYY-MM-DD'), TO_DATE('2025-04-25', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Loan_Detl (loan_id, customer_id, loan_type_id, amount, start_date, end_date, status) VALUES
(seq_loan_id.NEXTVAL, 8, 8, 200000.00, TO_DATE('2021-08-12', 'YYYY-MM-DD'), TO_DATE('2022-08-12', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Loan_Detl (loan_id, customer_id, loan_type_id, amount, start_date, end_date, status) VALUES
(seq_loan_id.NEXTVAL, 9, 9, 100000.00, TO_DATE('2022-02-14', 'YYYY-MM-DD'), TO_DATE('2024-02-14', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Loan_Detl (loan_id, customer_id, loan_type_id, amount, start_date, end_date, status) VALUES
(seq_loan_id.NEXTVAL, 10, 10, 2500000.00, TO_DATE('2021-10-20', 'YYYY-MM-DD'), TO_DATE('2036-10-20', 'YYYY-MM-DD'), 'active');

-- BAMS_Card_Type_Detl
INSERT INTO BAMS_Card_Type_Detl (card_type_id, type_name, description, annual_fee, reward_program, interest_rate) VALUES
(seq_card_type_id.NEXTVAL, 'Basic Debit Card', 'Standard debit card for savings accounts', 100.00, NULL, 0);
INSERT INTO BAMS_Card_Type_Detl (card_type_id, type_name, description, annual_fee, reward_program, interest_rate) VALUES
(seq_card_type_id.NEXTVAL, 'Gold Credit Card', 'Premium credit card with rewards', 1000.00, '1% cashback on all purchases', 24.00);
INSERT INTO BAMS_Card_Type_Detl (card_type_id, type_name, description, annual_fee, reward_program, interest_rate) VALUES
(seq_card_type_id.NEXTVAL, 'Platinum Debit Card', 'Premium debit card with higher withdrawal limits', 500.00, 'Airport lounge access', 0);
INSERT INTO BAMS_Card_Type_Detl (card_type_id, type_name, description, annual_fee, reward_program, interest_rate) VALUES
(seq_card_type_id.NEXTVAL, 'Business Credit Card', 'Credit card for business expenses', 2000.00, '1.5% cashback on business purchases', 22.00);
INSERT INTO BAMS_Card_Type_Detl (card_type_id, type_name, description, annual_fee, reward_program, interest_rate) VALUES
(seq_card_type_id.NEXTVAL, 'Travel Credit Card', 'Credit card optimized for travel rewards', 1500.00, '2x points on travel bookings', 26.00);
INSERT INTO BAMS_Card_Type_Detl (card_type_id, type_name, description, annual_fee, reward_program, interest_rate) VALUES
(seq_card_type_id.NEXTVAL, 'Student Debit Card', 'Debit card tailored for students', 0.00, 'Discounts on educational purchases', 0);
INSERT INTO BAMS_Card_Type_Detl (card_type_id, type_name, description, annual_fee, reward_program, interest_rate) VALUES
(seq_card_type_id.NEXTVAL, 'Secured Credit Card', 'Credit card backed by a security deposit', 500.00, NULL, 20.00);
INSERT INTO BAMS_Card_Type_Detl (card_type_id, type_name, description, annual_fee, reward_program, interest_rate) VALUES
(seq_card_type_id.NEXTVAL, 'Contactless Debit Card', 'Debit card with contactless payment feature', 200.00, NULL, 0);
INSERT INTO BAMS_Card_Type_Detl (card_type_id, type_name, description, annual_fee, reward_program, interest_rate) VALUES
(seq_card_type_id.NEXTVAL, 'Rewards Credit Card', 'Credit card with flexible rewards program', 1200.00, 'Points on all purchases', 25.00);
INSERT INTO BAMS_Card_Type_Detl (card_type_id, type_name, description, annual_fee, reward_program, interest_rate) VALUES
(seq_card_type_id.NEXTVAL, 'Corporate Credit Card', 'Credit card for large businesses', 5000.00, 'Customizable rewards', 21.00);

-- BAMS_Cust_Crcd_Detl
INSERT INTO BAMS_Cust_Crcd_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, credit_limit, current_balance, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 1, 2, '4111111111111111', TO_DATE('2025-12-31', 'YYYY-MM-DD'), '123', 100000.00, 25000.00, TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Crcd_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, credit_limit, current_balance, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 2, 4, '4222222222222222', TO_DATE('2026-06-30', 'YYYY-MM-DD'), '456', 200000.00, 75000.00, TO_DATE('2021-07-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Crcd_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, credit_limit, current_balance, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 1, 2, '4111111111111111', TO_DATE('2025-12-31', 'YYYY-MM-DD'), '123', 100000.00, 25000.00, TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Crcd_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, credit_limit, current_balance, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 2, 4, '4222222222222222', TO_DATE('2026-06-30', 'YYYY-MM-DD'), '456', 200000.00, 75000.00, TO_DATE('2021-07-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Crcd_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, credit_limit, current_balance, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 3, 5, '4333333333333333', TO_DATE('2026-03-31', 'YYYY-MM-DD'), '789', 150000.00, 50000.00, TO_DATE('2022-01-15', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Crcd_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, credit_limit, current_balance, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 4, 2, '4444444444444444', TO_DATE('2025-09-30', 'YYYY-MM-DD'), '234', 120000.00, 30000.00, TO_DATE('2021-10-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Crcd_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, credit_limit, current_balance, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 5, 4, '4555555555555555', TO_DATE('2026-11-30', 'YYYY-MM-DD'), '567', 250000.00, 100000.00, TO_DATE('2022-02-15', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Crcd_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, credit_limit, current_balance, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 6, 5, '4666666666666666', TO_DATE('2025-08-31', 'YYYY-MM-DD'), '890', 180000.00, 60000.00, TO_DATE('2021-09-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Crcd_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, credit_limit, current_balance, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 7, 2, '4777777777777777', TO_DATE('2026-05-31', 'YYYY-MM-DD'), '345', 90000.00, 20000.00, TO_DATE('2022-06-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Crcd_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, credit_limit, current_balance, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 8, 4, '4888888888888888', TO_DATE('2025-10-31', 'YYYY-MM-DD'), '678', 220000.00, 80000.00, TO_DATE('2021-11-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Crcd_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, credit_limit, current_balance, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 9, 5, '4999999999999999', TO_DATE('2026-07-31', 'YYYY-MM-DD'), '901', 160000.00, 55000.00, TO_DATE('2022-08-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Cust_Crcd_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, credit_limit, current_balance, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 10, 2, '4000000000000000', TO_DATE('2025-04-30', 'YYYY-MM-DD'), '432', 110000.00, 35000.00, TO_DATE('2021-05-01', 'YYYY-MM-DD'), 'active');

-- BAMS_Drcd_Card_Detl
INSERT INTO BAMS_Drcd_Card_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 1, 1, '5111111111111111', TO_DATE('2025-12-31', 'YYYY-MM-DD'), '321', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Drcd_Card_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 2, 3, '5222222222222222', TO_DATE('2026-06-30', 'YYYY-MM-DD'), '654', TO_DATE('2021-07-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Drcd_Card_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 3, 6, '5333333333333333', TO_DATE('2026-03-31', 'YYYY-MM-DD'), '987', TO_DATE('2022-01-15', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Drcd_Card_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 4, 1, '5444444444444444', TO_DATE('2025-09-30', 'YYYY-MM-DD'), '432', TO_DATE('2021-10-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Drcd_Card_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 5, 3, '5555555555555555', TO_DATE('2026-11-30', 'YYYY-MM-DD'), '765', TO_DATE('2022-02-15', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Drcd_Card_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 6, 6, '5666666666666666', TO_DATE('2025-08-31', 'YYYY-MM-DD'), '098', TO_DATE('2021-09-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Drcd_Card_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 7, 1, '5777777777777777', TO_DATE('2026-05-31', 'YYYY-MM-DD'), '543', TO_DATE('2022-06-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Drcd_Card_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 8, 3, '5888888888888888', TO_DATE('2025-10-31', 'YYYY-MM-DD'), '876', TO_DATE('2021-11-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Drcd_Card_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 9, 6, '5999999999999999', TO_DATE('2026-07-31', 'YYYY-MM-DD'), '109', TO_DATE('2022-08-01', 'YYYY-MM-DD'), 'active');
INSERT INTO BAMS_Drcd_Card_Detl (card_id, customer_id, card_type_id, card_number, expiration_date, cvv, issue_date, status) VALUES
(seq_card_id.NEXTVAL, 10, 1, '5000000000000000', TO_DATE('2025-04-30', 'YYYY-MM-DD'), '234', TO_DATE('2021-05-01', 'YYYY-MM-DD'), 'active');


-- BAMS_Cust_Benf_Detl
INSERT INTO BAMS_Cust_Benf_Detl (beneficiary_id, customer_id, beneficiary_name, account_number, bank_name, ifsc_code) VALUES
(seq_beneficiary_id.NEXTVAL, 1, 'John Doe', '1234567890', 'ABC Bank', 'ABCD0001234');
INSERT INTO BAMS_Cust_Benf_Detl (beneficiary_id, customer_id, beneficiary_name, account_number, bank_name, ifsc_code) VALUES
(seq_beneficiary_id.NEXTVAL, 2, 'Jane Smith', '2345678901', 'XYZ Bank', 'XYZD0005678');
INSERT INTO BAMS_Cust_Benf_Detl (beneficiary_id, customer_id, beneficiary_name, account_number, bank_name, ifsc_code) VALUES
(seq_beneficiary_id.NEXTVAL, 3, 'Bob Johnson', '3456789012', 'PQR Bank', 'PQRD0009012');
INSERT INTO BAMS_Cust_Benf_Detl (beneficiary_id, customer_id, beneficiary_name, account_number, bank_name, ifsc_code) VALUES
(seq_beneficiary_id.NEXTVAL, 4, 'Alice Brown', '4567890123', 'LMN Bank', 'LMND0003456');
INSERT INTO BAMS_Cust_Benf_Detl (beneficiary_id, customer_id, beneficiary_name, account_number, bank_name, ifsc_code) VALUES
(seq_beneficiary_id.NEXTVAL, 5, 'Charlie Wilson', '5678901234', 'EFG Bank', 'EFGD0007890');
INSERT INTO BAMS_Cust_Benf_Detl (beneficiary_id, customer_id, beneficiary_name, account_number, bank_name, ifsc_code) VALUES
(seq_beneficiary_id.NEXTVAL, 6, 'Diana Taylor', '6789012345', 'HIJ Bank', 'HIJD0001234');
INSERT INTO BAMS_Cust_Benf_Detl (beneficiary_id, customer_id, beneficiary_name, account_number, bank_name, ifsc_code) VALUES
(seq_beneficiary_id.NEXTVAL, 7, 'Ethan Davis', '7890123456', 'KLM Bank', 'KLMD0005678');
INSERT INTO BAMS_Cust_Benf_Detl (beneficiary_id, customer_id, beneficiary_name, account_number, bank_name, ifsc_code) VALUES
(seq_beneficiary_id.NEXTVAL, 8, 'Fiona Clark', '8901234567', 'NOP Bank', 'NOPD0009012');
INSERT INTO BAMS_Cust_Benf_Detl (beneficiary_id, customer_id, beneficiary_name, account_number, bank_name, ifsc_code) VALUES
(seq_beneficiary_id.NEXTVAL, 9, 'George White', '9012345678', 'QRS Bank', 'QRSD0003456');
INSERT INTO BAMS_Cust_Benf_Detl (beneficiary_id, customer_id, beneficiary_name, account_number, bank_name, ifsc_code) VALUES
(seq_beneficiary_id.NEXTVAL, 10, 'Hannah Green', '0123456789', 'TUV Bank', 'TUVD0007890');


-- BAMS_Cust_Docm_Detl
INSERT INTO BAMS_Cust_Docm_Detl (document_id, customer_id, document_type, document_number, issue_date, expiry_date) VALUES
(seq_document_id.NEXTVAL, 1, 'Passport', 'A1234567', TO_DATE('2018-01-01', 'YYYY-MM-DD'), TO_DATE('2028-01-01', 'YYYY-MM-DD'));
INSERT INTO BAMS_Cust_Docm_Detl (document_id, customer_id, document_type, document_number, issue_date, expiry_date) VALUES
(seq_document_id.NEXTVAL, 2, 'Drivers License', 'DL9876543', TO_DATE('2019-06-15', 'YYYY-MM-DD'), TO_DATE('2029-06-15', 'YYYY-MM-DD'));
INSERT INTO BAMS_Cust_Docm_Detl (document_id, customer_id, document_type, document_number, issue_date, expiry_date) VALUES
(seq_document_id.NEXTVAL, 3, 'Aadhar Card', '123456789012', TO_DATE('2020-03-30', 'YYYY-MM-DD'), NULL);
INSERT INTO BAMS_Cust_Docm_Detl (document_id, customer_id, document_type, document_number, issue_date, expiry_date) VALUES
(seq_document_id.NEXTVAL, 4, 'PAN Card', 'ABCDE1234F', TO_DATE('2017-09-22', 'YYYY-MM-DD'), NULL);
INSERT INTO BAMS_Cust_Docm_Detl (document_id, customer_id, document_type, document_number, issue_date, expiry_date) VALUES
(seq_document_id.NEXTVAL, 5, 'Passport', 'B2345678', TO_DATE('2019-11-05', 'YYYY-MM-DD'), TO_DATE('2029-11-05', 'YYYY-MM-DD'));
INSERT INTO BAMS_Cust_Docm_Detl (document_id, customer_id, document_type, document_number, issue_date, expiry_date) VALUES
(seq_document_id.NEXTVAL, 6, 'Voters ID', 'XYZ9876543', TO_DATE('2018-07-10', 'YYYY-MM-DD'), NULL);
INSERT INTO BAMS_Cust_Docm_Detl (document_id, customer_id, document_type, document_number, issue_date, expiry_date) VALUES
(seq_document_id.NEXTVAL, 7, 'Drivers License', 'DL8765432', TO_DATE('2020-02-28', 'YYYY-MM-DD'), TO_DATE('2030-02-28', 'YYYY-MM-DD'));
INSERT INTO BAMS_Cust_Docm_Detl (document_id, customer_id, document_type, document_number, issue_date, expiry_date) VALUES
(seq_document_id.NEXTVAL, 8, 'Aadhar Card', '234567890123', TO_DATE('2019-05-17', 'YYYY-MM-DD'), NULL);
INSERT INTO BAMS_Cust_Docm_Detl (document_id, customer_id, document_type, document_number, issue_date, expiry_date) VALUES
(seq_document_id.NEXTVAL, 9, 'PAN Card', 'FGHIJ5678K', TO_DATE('2018-12-03', 'YYYY-MM-DD'), NULL);
INSERT INTO BAMS_Cust_Docm_Detl (document_id, customer_id, document_type, document_number, issue_date, expiry_date) VALUES
(seq_document_id.NEXTVAL, 10, 'Passport', 'C3456789', TO_DATE('2021-04-20', 'YYYY-MM-DD'), TO_DATE('2031-04-20', 'YYYY-MM-DD'));

-- BAMS_ATMs_detl_tabl
INSERT INTO BAMS_ATMs_detl_tabl (atm_id, location, address, city, state_id, zone_id) VALUES
(seq_atm_id.NEXTVAL, 'Central Mall', '123 Main St', 'Mumbai', 1, 1);
INSERT INTO BAMS_ATMs_detl_tabl (atm_id, location, address, city, state_id, zone_id) VALUES
(seq_atm_id.NEXTVAL, 'City Center', '456 Park Ave', 'Delhi', 2, 2);
INSERT INTO BAMS_ATMs_detl_tabl (atm_id, location, address, city, state_id, zone_id) VALUES
(seq_atm_id.NEXTVAL, 'Railway Station', '789 Station Rd', 'Bengaluru', 4, 4);
INSERT INTO BAMS_ATMs_detl_tabl (atm_id, location, address, city, state_id, zone_id) VALUES
(seq_atm_id.NEXTVAL, 'Airport Terminal', '101 Airport Rd', 'Chennai', 5, 5);
INSERT INTO BAMS_ATMs_detl_tabl (atm_id, location, address, city, state_id, zone_id) VALUES
(seq_atm_id.NEXTVAL, 'Shopping Complex', '202 Market St', 'Kolkata', 7, 7);
INSERT INTO BAMS_ATMs_detl_tabl (atm_id, location, address, city, state_id, zone_id) VALUES
(seq_atm_id.NEXTVAL, 'University Campus', '303 College Rd', 'Hyderabad', 1, 1);
INSERT INTO BAMS_ATMs_detl_tabl (atm_id, location, address, city, state_id, zone_id) VALUES
(seq_atm_id.NEXTVAL, 'Metro Station', '404 Metro Ave', 'Pune', 1, 1);
INSERT INTO BAMS_ATMs_detl_tabl (atm_id, location, address, city, state_id, zone_id) VALUES
(seq_atm_id.NEXTVAL, 'Hospital', '505 Health Blvd', 'Ahmedabad', 3, 3);
INSERT INTO BAMS_ATMs_detl_tabl (atm_id, location, address, city, state_id, zone_id) VALUES
(seq_atm_id.NEXTVAL, 'Business Park', '606 Tech Park', 'Jaipur', 8, 8);
INSERT INTO BAMS_ATMs_detl_tabl (atm_id, location, address, city, state_id, zone_id) VALUES
(seq_atm_id.NEXTVAL, 'Residential Complex', '707 Housing Society', 'Lucknow', 6, 6);