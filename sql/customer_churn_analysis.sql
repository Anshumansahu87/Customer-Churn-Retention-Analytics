-- Customer Churn & Retention Analytics
-- SQL examples for PostgreSQL / MySQL-style syntax

-- 1. Overall KPIs
SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM customer_churn;

-- 2. Churn by contract
SELECT contract,
       COUNT(*) AS customers,
       SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
       ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM customer_churn
GROUP BY contract
ORDER BY churn_rate DESC;

-- 3. Churn by payment method
SELECT payment_method,
       COUNT(*) AS customers,
       ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM customer_churn
GROUP BY payment_method
ORDER BY churn_rate DESC;

-- 4. Churn by tenure segment
SELECT
    CASE
        WHEN tenure_months <= 6 THEN '0-6 Months'
        WHEN tenure_months <= 12 THEN '7-12 Months'
        WHEN tenure_months <= 24 THEN '13-24 Months'
        WHEN tenure_months <= 48 THEN '25-48 Months'
        ELSE '49-72 Months'
    END AS tenure_segment,
    COUNT(*) AS customers,
    ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM customer_churn
GROUP BY 1
ORDER BY 1;

-- 5. Average monthly charges by churn status
SELECT churn, ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges
FROM customer_churn
GROUP BY churn;

-- 6. High-risk segment
SELECT contract, internet_service, payment_method,
       COUNT(*) AS customers,
       ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM customer_churn
GROUP BY contract, internet_service, payment_method
HAVING COUNT(*) >= 30
ORDER BY churn_rate DESC
LIMIT 10;
