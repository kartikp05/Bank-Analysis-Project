SELECT * FROM Bank_Loan_data


-- GOOD LOAN PERCENTAGE
SELECT (COUNT (CASE WHEN loan_status = 'Fully Paid' OR loan_status= 'Current'
THEN id END)*100)/ COUNT(id)
AS GOOD_LOAN_PERCENTAGE
FROM Bank_Loan_data

--GOOD LOAN APPLICATION
SELECT COUNT(ID)AS GOOD_LOAN_APPLICATION FROM Bank_Loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- GOOD LOAN FUNDED AMOUNT
SELECT SUM(loan_amount) as GOOD_LOAN_AMOUNT FROM Bank_Loan_data
WHERE loan_status= 'Fully Paid' OR loan_status = 'Current'

-- GOOD LOAN TOTAL AMOUNT RECEIVED
SELECT SUM(total_payment) AS GOOD_LOAN_REPAYMENT_AMOUNT FROM Bank_Loan_data
WHERE loan_status = 'Fully Paid' OR loan_status= 'Current'


-- BAD LOAN APPLICATION PERCENTAGE
SELECT
	(COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END)* 100.00)/COUNT(id)
	AS BAD_LOAN_PERCENTAGE
	FROM Bank_Loan_data

-- BAD LOAN APPLICATION
SELECT COUNT(id) AS BAD_LOAN_APPLICATION FROM Bank_Loan_data
WHERE loan_status= 'Charged Off'

-- BAD LOAN FUNDED AMOUNT
SELECT SUM(loan_amount) AS BAD_LOAN_FUNDED FROM Bank_Loan_data
WHERE loan_status= 'Charged off'

-- BAD LOANS AMOUNT RECOVERED
SELECT SUM(total_payment) AS BAD_DEBTS_RECOVERED FROM Bank_Loan_data
WHERE loan_status = 'Charged Off'

 
