![image](https://github.com/user-attachments/assets/4f60a4bd-6f0c-4bd4-8cb5-3990a72ac198)# Sales Performance Analysis for a Retail Store

[Project Overview](#project-overview) 

[Problem](#problem)

[Process](#process)

[Exploratory Data Analysis](#exploratory-data-analysis)

[Data Visualization](#data-visualization)

[Inferences](#inferences)

[Conclusion](#conclusion)

[Tables](#tables)



### Project Overview
---
The Retail store seeks to carry out the comprehensive analysis of its sales performance across a defined period to gain valuable insights into customer preferences, product sales and regional performances.

### Problem
---
In this project, I was tasked with;
1. Analyzing the sales performance of a retail store and
2. To explore Sales data to uncover Key Insights such as:
   - Top-selling products
   - Regional performance
   - Monthly sales trends
   - Total sales by product, region, and month
   - Average sales per product and
   - Total revenue by region
   
### Process
---
So, how did I tackle this problem?
Well I approached it in 5 steps:
1. Data understanding - the key to success on any data project is to understand the data in detail. So I took the time to understand the data model and domain of the business.

2. Data cleaning - after understanding the business, I then cleaned the available datasets and thought about what an ideal dataset should look like for this problem.
   This was done using the following tools;
    - Microsoft Excel-
         - The use of conditional formatting to check for duplicates
         - Pivot Table- to summarise the data
      
    - Microsoft Power BI- using the Transform data page to check for null values and errors.

3. Data modelling - After ensuring the data was clean for analysis, I needed to process and model this data into a dataset that can precisely answer the business questions and produce the results needed.

4. Data analysis - With the new dataset, I used my analytical expertise to uncover insights from this dataset and to produce visualizations to describe the insights.
   The following tools were used;
      - Microsoft Excel- Use of formulas like Multiplication(Revenue)
      - Pivot table
        - for calculations like; Top Performing Products by Total Sales, Average Sales, Distinct Count of Customers, Top 10 Customers by Quantity Sold and
        - to show results like; Total Quantity Sold, Total Revenue by Region, Product, Total sales per Region, Region/Product by Distinct count of customers.
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
            select sum(quantity_sold) as TotalSales,Region from SALES_DATA
            group by Region
            order by  TotalSales desc
            ```
          - Highest selling product by sales value
            ```
            Select top 1 sum(quantity_sold) as TotalSales_Top, Product from SALES_DATA
            Group by Product
            order by sum(Quantity_sold) desc
            ```
     - Microsoft Power BI
       - Through the use of DAX functions(calculated measure) and Conditional columns
       - Use of Charts, Cards, Tables
5. And finally I used these insights to unlock business decisions and to make recommendations on next steps.

### Exploratory Data Analysis
---
- Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset
  
- Microsoft Power BI to summarise and analyse the dataset

### Data Visualization
---
- Filtered chart for Year 2023
- Filtered Chart for Year 2024
   
### Inferences
---
1. Overall Sales Trends by Month
2. Regional Performance
3. Overall Revenue Trends by Month
4. Insights(Strategic Implications to the Business)
- FEBRUARY AND JUNE ARE THE TOP MOST SELLING MONTHS WITH TOTAL QUANTITY SOLD OF 50,000 FOR THE TWO YEAR PERIODS(2023&2024)
- SALES ARE LOWEST IN MAY AND DECEMBER WITH TOTAL QUANTITY SOLD OF 12,500 FOR THE TWO YEAR PERIODS(2023&2024)
- THE SOUTHERN REGION HAS THE HIGHEST QUANTITY SOLD WITH 122,500 FOR THE TWO YEAR PERIODS(2023&2024) AND ALSO THE HIGHEST REVENUE OF 4,675,000 FOR YEAR 2023 &2024
- THE YEAR 2023 WAS THE BEST PERFORMING YEAR WITH TOTAL SALES OF 195,000
- HAT IS THE MOST ORDERED PRODUCT OF THE RETAIL STORE WITH TOTAL SALES OF 80,000 FOLLOWED BY SHOES WITH 72,500 PIECES
- HAT AND GLOVE HAVE THE HIGHEST AVERAGE SALES PER PRODUCT WITH A FIGURE OF 8.33 FOLLOWED BY HAT WITH AVERAGE SALES OF 8PCS
- Cus1151 ORDERED FOR ITEMS FROM THE STORE THE MOST WITH A TOTAL ORDER OF 911UNITS


 
### Conclusion
---

### Tables 
---
💻
🥇
Total Revenue and Total Sales per Year
|YEAR| TOTAL REVENUE|TOTAL SALES|
|-----| -----|-----|
|2023|5,575,000|195,000|
|2024|5,012,500|150,000|

👩‍💻👩🏾‍💻 
Average Revenue and Average Sales per Year
|YEAR| AVERAGE REVENUE|AVERAGE SALES|
|-----| -----|-----|
|2023|185.8333333|6.5|
|2024|250.625|7.5|




