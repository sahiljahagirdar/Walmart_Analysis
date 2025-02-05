Project Title : Walmart Store Analysis

Project Overview

Introduction :
- This report analyzes the impact of multiple factors on weekly sales using SQL queries. The objective is to determine correlations between sales and various economic and environmental variables.

Data Description:
The Dataset Contains following columns
- Weekly_Sales: Total sales for the week.
- Fuel_Price: Price of fuel during the corresponding week.
- Holiday_Flag: Indicator of whether the week included a holiday (1 = holiday, 0 = non-holiday).
- Temperature: Average temperature during the week.
- Temperature: Average temperature during the week.
- Unemployed: Number of unemployed individuals.
- Weather_Condition: Categorized weather conditions such as "Sunny," "Rainy," or "Snowy." etc based on °F.

Analysis & Insights

 Sales vs Fuel Price (Grouped by Price Ranges):
- Q. What is the relationship between weekly sales and fuel price?
- <img width="513" alt="Week_price Vs Fuel" src="https://github.com/user-attachments/assets/baf7e9ce-8099-41bf-8bbe-8a03c4d8346d" />
Findings:
- Sales were highest in the 3.0 - 4.0 fuel price range.
- Sales decreased when fuel prices exceeded 4.0.
- The lowest sales were observed when fuel prices were Above 4.0.

Sales vs Holidays
- Q. How do sales during holidays correlate with higher or lower sales during the year?
- <img width="536" alt="Holiday vs Sales" src="https://github.com/user-attachments/assets/b49ff81b-328e-4272-9a37-df85c2e792c7" />
Findings:
- Sales were significantly higher during holiday weeks.
- Non-holiday weeks had relatively lower sales.

Sales vs Temperature:
- Q. How do weekly sales vary with temperature?
- <img width="557" alt="Sales Vs Temperature" src="https://github.com/user-attachments/assets/1867cdb6-2233-475e-a295-bcc057cf7fc0" />
Findings:
- Sales were highest when temperature was less than 50°F.
- Sales decreaed when temperature was aobve 75°F.
- Extremely high or low temperatures correlated with decreased sales.

Sales vs Unemployment:
- Q. How does the unemployment rate influence weekly sales?
- <img width="457" alt="unemployment vs sales" src="https://github.com/user-attachments/assets/ec5be874-b638-45fb-988d-466064add6b2" />
Findings:
- Higher unemployment rates were associated with reduced sales.
- Lower unemployment led to higher weekly sales, suggesting a positive link between employment levels and consumer spending.

Conclusion:
The analysis indicates that weekly sales are influenced by multiple factors:
- Fuel prices affect sales, with moderate prices leading to higher sales.
- Holidays significantly boost sales.
- Temperature plays a role, with moderate temperatures being optimal for sales.


Recomendations:
- Monitor fuel price trends to optimize pricing strategies.
- Plan promotions and inventory stocking around holidays to maximize sales.
- Account for temperature trends when planning seasonal campaigns.


















