-- =========================================================================
-- SCRIPT 05: HIGH-VALUE MONTH-TO-MONTH RISK SEGMENTATION
-- PURPOSE: Query active, month-to-month subscribers with monthly charges 
--          exceeding the entire company's average rate.
-- =========================================================================

SELECT
    customerID,
    Contract,
    InternetService,
    MonthlyCharges,
    tenure
FROM raw_churn_data
WHERE Churn = 'No'
  AND Contract = 'Month-to-month'
  AND MonthlyCharges > (SELECT AVG(MonthlyCharges) FROM raw_churn_data)
ORDER BY MonthlyCharges DESC
LIMIT 10;