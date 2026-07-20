-- =========================================================================
-- SCRIPT 04: ANALYTICAL VIEW DEPLOYMENT
-- PURPOSE: Establish 'v_clean_churn_data' as a reusable logical database
--          view with standardized fields and tenure cohort groupings.
-- =========================================================================

CREATE VIEW v_clean_churn_data AS
SELECT
    customerID,
    gender,
    CASE WHEN SeniorCitizen = 1 THEN 'Yes' ELSE 'No' END AS is_senior,
    Partner,
    Dependents,
    tenure,
    CASE
        WHEN tenure <= 12 THEN '0-1 Year'
        WHEN tenure <= 24 THEN '1-2 Years'
        WHEN tenure <= 48 THEN '2-4 Years'
        ELSE '4+ Years'
    END AS tenure_cohort,
    PhoneService,
    MultipleLines,
    InternetService,
    OnlineSecurity,
    OnlineBackup,
    DeviceProtection,
    TechSupport,
    StreamingTV,
    StreamingMovies,
    Contract,
    PaperlessBilling,
    PaymentMethod,
    MonthlyCharges,
    TotalCharges,
    Churn
FROM raw_churn_data;