-- =========================================================================
-- SCRIPT 06: COMPREHENSIVE SERVICE & REVENUE LOSS DIAGNOSTICS
-- PURPOSE: Run detailed service interaction queries and monthly financial 
--          revenue-at-risk analysis.
-- =========================================================================

-- Diagnostic 1: Support Service Interactions vs. Retention Rates
SELECT
    TechSupport,
    OnlineSecurity,
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN Churn = 'Yes' THEN 1 END) AS churned_customers,
    ROUND(
        (COUNT(CASE WHEN Churn = 'Yes' THEN 1 END)::NUMERIC / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM raw_churn_data
GROUP BY TechSupport, OnlineSecurity
ORDER BY churn_rate_percentage DESC;


-- Diagnostic 2: Financial Attrition - Revenue Share of Churned Accounts
SELECT
    Churn,
    COUNT(*) AS total_customers,
    SUM(MonthlyCharges) AS monthly_revenue,
    ROUND(
        (SUM(MonthlyCharges) / (SELECT SUM(MonthlyCharges) FROM raw_churn_data)) * 100,
        2
    ) AS revenue_share_percentage
FROM raw_churn_data
GROUP BY Churn;