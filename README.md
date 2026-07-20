# 📞 Telecom Churn Analysis & Retention Strategy

## 📊 Interactive Dashboard
You can view and interact with the live data visualizations for this project here:
👉 [View Live Tableau Dashboard](https://public.tableau.com/app/profile/joseph.ngugi5438/viz/Telecom_Churn_Analysis_17845141002070/TheChurnBreakdown)

---


### Project Stack
      * * * PostgreSQL
	  * * * Tableau
	  * * * SQL
### How to View
      * * * Use Tableau Reader or Tableau Desktop to view the bundled .twbx dashboard.
### Key Business Insights (The Diagnostic Findings)
Based on our SQL database engineering and Tableau diagnostic analysis, customer churn is heavily driven by three primary friction points:

### 1. The baseline Churn Problem
* *The Finding:** The overall customer churn rate stands at **26.54%**, representing **1,869 churned accounts** out of a total subscriber base of **7,043**.
* **The Revenue Impact:** Active customers generate **$316,985.75** in monthly revenue (69.50%). Lost accounts represent **$139,130.85** in lost monthly recurring revenue (30.50%). This proves churn is an expensive, high-priority financial issue, not just a service metric.

### 2. Lack of Value-Added Services (Tech Support & Online Security)
* **The Finding:** Customers who do **not** have both *Tech Support* and *Online Security* activated show an astronomical churn rate of **48.96%** (accounting for **1,250 churned accounts** out of 2,553 in this segment).
* **The Retention Anchor:** When customers subscribe to both Tech Support and Online Security, their churn rate plummets to a mere **9.01%**. This indicates that bundling support and utility security is our strongest retention lever.

### 3. Month-to-Month High-Value Risk Exposure
* **The Finding:** We isolated a subset of highly vulnerable active customers: those on **Month-to-Month contracts** who are paying monthly bills **above the company average** (such as customers `8016-NCFVO` paying **$116.50/mo** and `9659-QEQSY` paying **$115.65/mo**) but have no long-term contractual commitment.
* **The Strategy:** These customers are prime candidates for proactive outreach. Offering them a discounted annual contract will stabilize our highest-yield accounts before they look for cheaper alternatives.