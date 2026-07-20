-- =========================================================================
-- SCRIPT 03: TROUBLESHOOTING & QUERY DEBUGGING
-- PURPOSE: Document the query-writing process, specifically resolving 
--          standard SQL group aggregate requirements.
-- =========================================================================

-- BUGGED QUERY ATTEMPT (Resulted in ERROR: column must appear in GROUP BY clause):
/*
SELECT
     Contract,
     COUNT(*) AS total_customers,
     COUNT(CASE WHEN Churn = 'Yes' THEN 1 END) AS churned_customers,
     ROUND(
         (COUNT(CASE WHEN Churn = 'Yes' THEN 1 END)::NUMERIC / COUNT(*)) * 100,
         2
     ) AS churn_rate_percentage
FROM raw_churn_data;
*/

-- RESOLVED PRODUCTION QUERY (Adding the necessary GROUP BY statement):
SELECT
    Contract,
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN Churn = 'Yes' THEN 1 END) AS churned_customers,
    ROUND(
        (COUNT(CASE WHEN Churn = 'Yes' THEN 1 END)::NUMERIC / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM raw_churn_data
GROUP BY Contract
ORDER BY churn_rate_percentage DESC;