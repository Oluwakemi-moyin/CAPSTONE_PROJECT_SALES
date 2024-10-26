# CAPSTONE_PROJECT_SALES
## Sales Performance Analysis for a Retail Store
### Project Overview
---
The Retail store seeks to carry out the comprehensive analysis of its sales performance across a defined period to gain valuable insights into customer preferences, product sales and regional performances.

### Problem
---
In this project, I was tasked with;
1. Analyzing the sales performance of a retail store and
2. To explore sales data to uncover key insights such as:
   - Top-selling products
   - Regional performance, and
   - Monthly sales trends
   
### Process
---
So, how did I tackle this problem?
Well I approached it in 5 steps:
1. Data understanding - the key to success on any data project is to understand the data in detail. So I took the time to understand the data model and domain of the business.

2. Data cleaning - after understanding the business, I then cleaned the available datasets and thought about what an ideal dataset should look like for this problem.
   This was done using the following tools;
    - Microsoft Excel- through the use of conditional formatting to check for duplicates.
    - Microsoft Power BI- using the transform data page to check for null values and errors.

3. Data modelling - After ensuring the data was clean for analysis, I needed to process and model this data into a dataset that can precisely answer the business questions and produce the results needed.

4. Data analysis - With the new dataset, I used my analytical expertise to uncover insights from this dataset and to produce visualizations to describe the insights.
   The following tools were used;
      - Microsoft Excel- this was done through the use of formulas like Multiplication and also calculations(Average, Sum, Percentage) through the use of Pivot table.
        FORMULA:
        ```
         Revenue = Quantity sold*Unit Price
        ```
      - SQL Server - analysis was done with queries like;
          - Total Sales for each Product Category
            ```
            select sum(quantity_sold) as TotalSales,Product from SALES_DATA
            group by Product
            order by  TotalSales desc
            ```
          - Number of transactions per Region
            ```
            select sum(quantity_sold) as TotalSales_North from SALES_DATA
            WHERE Region = 'North'
            ```
          - Highest selling product by sales value
            ```
            Select top 1 sum(quantity_sold) as TotalSales_Top, Product from SALES_DATA
            Group by Product
            order by sum(Quantity_sold) desc
            ```
     - Microsoft Power BI - Through the use of DAX functions(calculated measure) and Conditional columns
     
6. And finally I used these insights to unlock business decisions and to make recommendations on next steps.


### Insights
---
- FEBRUARY AND JUNE ARE THE TOP MOST SELLING MONTHS WITH TOTAL QUANTITY SOLD OF 50,000 FOR THE TWO YEAR PERIODS(2023&2024)
- SALES ARE LOWEST IN MAY AND DECEMBER WITH TOTAL QUANTITY SOLD OF 12,500 FOR THE TWO YEAR PERIODS(2023&2024)
- THE SOUTHERN REGION HAS THE HIGHEST QUANTITY SOLD WITH 122,500 FOR THE TWO YEAR PERIODS(2023&2024) AND ALSO THE HIGHEST REVENUE OF 4,675,000 FOR YEAR 2023 &2024
- THE YEAR 2023 WAS THE BEST PERFORMING YEAR WITH TOTAL SALES OF 195,000
- HAT IS THE MOST ORDERED PRODUCT OF THE RETAIL STORE WITH TOTAL SALES OF 80,000 FOLLOWED BY SHOES WITH 72,500 PIECES
- HAT AND GLOVE HAVE THE HIGHEST AVERAGE SALES PER PRODUCT WITH A FIGURE OF 8.33 FOLLOWED BY HAT WITH AVERAGE SALES OF 8PCS
- Cus1151 ORDERED FOR ITEMS FROM THE STORE THE MOST WITH A TOTAL ORDER OF 911UNITS


2023




2024
 
Summary
---

Revenue Table
|YEAR| TOTAL REVENUE|
|-----| -----| 
|2013|N/A |
|2014| N/A|

💻
👩‍💻👩🏾‍💻
🥇
