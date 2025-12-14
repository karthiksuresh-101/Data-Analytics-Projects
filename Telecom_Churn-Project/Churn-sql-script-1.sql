-- SQL QUERIES --

-- Churn rate dependent factors --


-- churn rate by senior citizen --
SELECT ROUND(100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 END)/COUNT(*),2) AS churn_rate_pct
FROM telecom_churn
where SeniorCitizen>0;


-- churn rate by partner -- 
SELECT partner,ROUND(100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 END)/COUNT(*),2) AS churn_rate_pct
FROM telecom_churn
group by partner;


-- churn rate by gender --
SELECT gender, ROUND(100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 END)/COUNT(*),2) AS churn_rate_pct
FROM telecom_churn
group by gender;


-- churn rate on contract -- 
SELECT contract, ROUND(100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 END)/COUNT(*),2) as churn_pct
FROM telecom_churn
group by contract;

-- churn rate by tenture groups --
SELECT case 
	when tenure < 13 then '0-1 year' 
	when tenure < 25 then '1-2 year' 
	when tenure < 49 then '2-4 year'
    else 'Loyal Customers'
end as tenure_group    ,
    ROUND(100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 END)/COUNT(*),2) as churn_pct
FROM telecom_churn
group by tenure_group
order by tenure_group;

-- internet service --
SELECT InternetService,tenure, ROUND(100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 END)/COUNT(*),2) as churn_pct
FROM telecom_churn
group by InternetService,tenure
order by tenure desc;


-- Churn rate and churned customers group by tenure group and internet service = "Fiber Optics" --
SELECT InternetService,case 
	when tenure < 13 then '0-1 year' 
	when tenure < 25 then '1-2 year' 
	when tenure < 49 then '2-4 year'
    else 'Loyal Customers'
end as tenure_group    
,ROUND(100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 END)/COUNT(*),2) as churn_pct -- 
,count(*) as churn_customer  
FROM telecom_churn
where InternetService ='Fiber optic'
group by  InternetService,tenure_group
order by tenure_group DESC ,churn_customer asc;


-- Total monthly revenue lost due to churned customers --
select round(sum(MonthlyCharges),2) as lost_revenue_per_month
from telecom_churn
where churn = 'Yes';


-- Grand Total of Revenue Lost to Churn (Using Subquery) --
SELECT SUM(lost_revenue_per_contract) as grand_total
FROM 
    (
    -- This inner part creates a temporary list of lost revenue by contract --
    SELECT Contract, SUM(MonthlyCharges) as lost_revenue_per_contract
    FROM telecom_churn
    WHERE churn = 'Yes'
    GROUP BY Contract
    ) as sub_table;



-- Contract and Internet service based churn rate --
select Contract,InternetService,round(100 *sum(case when churn ='Yes' then 1 end)/count(*),2) as churn_pct
from telecom_churn
group by Contract,InternetService
order by churn_pct desc;


-- Churn Rate by Online Security Subscription (Internet Users Only) --
select OnlineSecurity,round(100 *sum(case when churn ='Yes' then 1 end)/count(*),2) as churn_pct
from telecom_churn
where InternetService != 'No'
group by OnlineSecurity
order by churn_pct desc;


-- Churn Rate by Online Backup Subscription (Internet Users Only) --
select OnlineBackup,round(100 *sum(case when churn ='Yes' then 1 end)/count(*),2) as churn_pct
from telecom_churn
where InternetService != 'No'
group by OnlineBackup
order by churn_pct desc;


-- Impact of Bundled Support Services on Churn Rate --
select OnlineSecurity,OnlineBackup,TechSupport,DeviceProtection,round(100 *sum(case when churn ='Yes' then 1 end)/count(*),2) as churn_pct
from telecom_churn
where InternetService != 'No'
group by OnlineSecurity,OnlineBackup,TechSupport,DeviceProtection
order by churn_pct desc;


-- Churn Trends by Tenure and Internet Service Type --
SELECT InternetService,tenure, ROUND(100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 END)/COUNT(*),2) as churn_pct
FROM telecom_churn
group by InternetService,tenure
order by tenure desc;


-- Identification of High-Risk, High-Value Retained Customers --
select customerID,MonthlyCharges,Contract,Churn
from telecom_churn
where Contract ='Month-to-month' and MonthlyCharges > 70 and Churn='No'
group by MonthlyCharges,Contract,customerID
order by MonthlyCharges desc;


-- Check if electronic check has the most churn rate --
select PaymentMethod,round(100 *sum(case when churn ='Yes' then 1 end)/count(*),2) as churn_pct
from telecom_churn
group by PaymentMethod;


-- To check top 5 customers in each contract category
WITH RankedCustomers AS (
    SELECT customerID, Contract, MonthlyCharges,
        RANK() OVER (PARTITION BY Contract ORDER BY MonthlyCharges DESC) as rank_in_contract FROM telecom_churn
)SELECT * FROM RankedCustomers
WHERE rank_in_contract <= 5;


-- Top 5 High-Paying Customers per Contract --
WITH RankedCustomers AS (
    SELECT customerID, Contract, MonthlyCharges,
        RANK() OVER (PARTITION BY Contract ORDER BY MonthlyCharges DESC) as rank_in_contract FROM telecom_churn
)SELECT * FROM RankedCustomers
WHERE rank_in_contract <= 5;


-- Filtering Customers with Above-Average Monthly Charges --
SELECT customerID, MonthlyCharges, Churn
FROM telecom_churn
WHERE MonthlyCharges > (
    -- This is the Subquery: It calculates the average first
    SELECT AVG(MonthlyCharges) FROM telecom_churn
);
