

-- Total customers
SELECT COUNT(*) AS total_customers
FROM bank_customer;

-- Overall churn rate
SELECT
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer;

-- Average balance
SELECT
ROUND(AVG(balance),2) AS avg_balance
FROM bank_customer;

-- Average credit score
SELECT
ROUND(AVG(credit_score),2) AS avg_credit_score
FROM bank_customer;

-- Average salary
SELECT
ROUND(AVG(estimated_salary),2) AS avg_salary
FROM bank_customer;



-- Churn by country
SELECT
country,
COUNT(*) AS customers,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer
GROUP BY country
ORDER BY churn_rate DESC;

-- Churn by gender
SELECT
gender,
COUNT(*) AS customers,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer
GROUP BY gender
ORDER BY churn_rate DESC;

-- Churn by age group
SELECT
age_group,
COUNT(*) AS customers,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer
GROUP BY age_group
ORDER BY churn_rate DESC;



-- Active membership impact
SELECT
active_member,
COUNT(*) AS customers,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer
GROUP BY active_member;

-- Credit card impact
SELECT
credit_card,
COUNT(*) AS customers,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer
GROUP BY credit_card;

-- Zero balance impact
SELECT
zero_balance,
COUNT(*) AS customers,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer
GROUP BY zero_balance;



SELECT
products_number,
COUNT(*) AS customers,
ROUND(AVG(churn)*100,2) AS churn_rate
FROM bank_customer
GROUP BY products_number
ORDER BY products_number;

