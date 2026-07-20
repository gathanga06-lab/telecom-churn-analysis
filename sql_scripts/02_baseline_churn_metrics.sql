-- =========================================================================
-- SCRIPT 02: BASELINE SUBSCRIBER CHURN ANALYSIS
-- PURPOSE: Compute the absolute customer volume and the base-level churn
--          percentage for the entire dataset.
-- =========================================================================

SELECT
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN Churn = 'Yes' THEN 1 END) AS churned_customers,
    ROUND(
        (COUNT(CASE WHEN Churn = 'Yes' THEN 1 END)::NUMERIC / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM raw_churn_data;