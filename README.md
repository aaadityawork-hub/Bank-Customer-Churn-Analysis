# Bank-Customer-Churn-Analysis
End-to-end data analytics project using SQL for ETL and Power BI for executive-level reporting. Identified key churn drivers for a UK bank and developed strategic retention recommendations.
-- The Challenge
The bank is seeing a significant number of customers closing their accounts. I built this dashboard to help the management team see exactly who is leaving, where they are from, and what products are failing.

-- How I Built This
Data Preparation: Cleaned and transformed raw CSV data using MySQL. (See bank_churn.sql for the queries).

Data Modeling: Established relationships and created custom measures (DAX) for churn rates and active member ratios.

UI Design: Developed a 2-page "Dark Mode" dashboard with a focus on user experience and easy navigation.

-- Key Findings
The Age Gap: Churn peaks dangerously at 71% for customers aged 52–56. This is a high-value group that needs immediate attention.

The Germany Factor: Customers in Germany are leaving at nearly double the rate of those in France and Spain.

Credit Card Friction: Surprisingly, cardholders have a higher exit rate, suggesting our current card offers aren't competitive enough.

-- Strategic Solutions
Loyalty Milestones: Introduce special rewards or fixed-deposit rates for customers hitting their 1-year and 9-year anniversaries to reduce "tenure-based" exits.

Engagement Campaigns: Automate "We Miss You" outreach for inactive members to bring them back into the app.

Product Revamp: Re-evaluate the credit card reward structure to increase product "stickiness."

-- What's in this Repo?
bank_churn.sql: All the backend data cleaning and table joins.

Banking_Retention_Analysis_2026.pbix: The final interactive Power BI file.

train.csv / test.csv: The raw datasets used for the analysis.
