-- =========================================================================
-- SCRIPT 01: DATABASE SETUP & BULK DATA IMPORT
-- PURPOSE: Create the 'telco_portfolio' database, establish the schema,
--          and import raw customer data via psql '\copy'.
-- =========================================================================

-- 1. Initialize Database
-- Note: If this database already exists, run standard connection step instead.
-- CREATE DATABASE telco_portfolio;

-- 2. Define Table Schema matching WA_Fn-UseC_-Telco-Customer-Churn specifications
CREATE TABLE raw_churn_data (
    customerID VARCHAR(50) PRIMARY KEY,
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(30),
    InternetService VARCHAR(30),
    OnlineSecurity VARCHAR(30),
    OnlineBackup VARCHAR(30),
    DeviceProtection VARCHAR(30),
    TechSupport VARCHAR(30),
    StreamingTV VARCHAR(30),
    StreamingMovies VARCHAR(30),
    Contract VARCHAR(30),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(50),
    MonthlyCharges NUMERIC(10, 2),
    TotalCharges VARCHAR(50),
    Churn VARCHAR(10)
);

-- 3. Execute bulk import from the local temp directory
\copy raw_churn_data FROM 'C:/temp/WA_Fn-UseC_-Telco-Customer-Churn.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');

-- 4. Initial pipeline sanity check (Retrieving top 5 records)
SELECT customerID, gender, tenure, MonthlyCharges, Churn
FROM raw_churn_data
LIMIT 5;