# Sales Performance Analysis for a Retail Store

[Project Overview](#project-overview) 

[Problem](#problem)

[Dataset Used](#dataset-used)

[Tools Used](#tools-used)

[Process](#process)

[Dashboard Overview](#dashboard-overview)

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

### Dataset Used
1. Product- these are the lists of product the Retail store offers
2. Region- these are the region locations the Retail store has its branches
3. Orderdate- this is the date of order. Presented in day, month, quarter and year.
4. Quantity Sold- this is the quantity of product purchased by customers per time
5. Unit price- price at which each product is sold
6. Revenue- calculated as; quantity sold * unit price
7. Average sales- average unit sold for each item. Calculated as; total value of all sales orders in the chosen timeframe and divide by the intervals
8. Average unit price- average price an item is sold in a specified period of time. Calculated as; Total Revenue/ Units sold
9. Distinct Count of CustomerID- this is to know the total number of customers we have.

### Tools Used
---
1. Microsoft Excel [Download here][LITA Capstone Dataset.xlsx](https://github.com/user-attachments/files/17551083/LITA.Capstone.Dataset.xlsx)
   - for Data cleaning
   - for Summarisation of the data
   - for Visualisation
2. SQL Server [Download here][Uploading SQLQueryPROJECT-SALESDATA.sql…]()
   - for data querying
3. Microsoft PowerBI [Download here]
    - for Summarisation of the dataset and
    - for Visualisations
4. Github- for profile building

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
       - Through the use of DAX functions(calculated measure) for Average Revenue per Product and Calculated columns like Orderdate(Monthly)
       - Use of Charts, Cards, Tables
5. And finally I used these insights to unlock business decisions and to make recommendations on next steps.


### Dashboard Overview
---
![IMG-20241027-WA0024](https://github.com/user-attachments/assets/7f99b489-bb45-4888-9814-20826f6778be)


                                                               |A|
## Top-selling products
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.


![Screenshot 2024-10-26 013918](https://github.com/user-attachments/assets/855d768c-8507-4ee9-80b7-4bdc76350033)


### Data Visualization
---
![Screenshot 2024-10-27 232613](https://github.com/user-attachments/assets/c8d22ff0-d693-4e62-9417-431b565c0b6b)

![IMG-20241027-WA0023](https://github.com/user-attachments/assets/d78a3b95-306a-4103-a869-99d561a698c9)



   
### Inferences
---
1. Overall Sales Trends by Month
   - HAT is the top-selling product of the Retail Store wth total sales of 80,000pcs, followed by SHOES with 72,500 pcs for the time periods(2023&2024).
   - The month of MAY had the lowest number of units sold with 5,000pcs of JACKETS sold in the Year 2023 and 7,500pcs of JACKETS sold in the Year 2024.
   - Sales are lowest in MAY and DECEMBER with total quantity sold of 12,500 for both for the two year periods.
   - The month of JULY had the highest sales of 30,000pcs of shirt sold in the Year 2023 and the month of JUNE also had the highest number of units sold with 30,000pcs of GLOVES sold in the Year 2024.
   - FEBRUARY AND JUNE are the top most selling months with total quantity sold of 50,000pcs for both for the two year periods.
   - SHIRTS AND GLOVES have the HIGHEST AVERAGE SALES PER PRODUCT with a figure oF 8.33 followed by HAT with an AVERAGE SALES of 8PCS
2. Regional Performance
   - The SOUTHERN REGION had the highest quantity sold with 122,500pcs for the two Year periods(2023&2024) and highest Revenue of 4,675,000 for the two Year periods(2023&2024).
   - SHOES, HATS AND SOCKS were the products sold in the Southern Region for the two Year periods(2023&2024).
   - SHOES and HAT were top selling products in the Southern Region with quantity sold of 50,000pcs for each. 
3. Overall Revenue Trends by Month
   - SHOES is the top-selling product of the Retail store with total revenue of 3,087,500pcs followed by SHIRT for the time periods(2023&2024).
   - The month of APRIL had the lowest total Revenue of 37,500 for SOCKS sold in the Year 2023 and JULY had a total Revenue of 187,500 for SHOES sold in the Year 2024 which was the lowest for the year.
   - FEBRUARY has the highest total revenue of 2,750,000 for SHOES for the time periods(2023&2024).
   - SEPTEMBER has the lowest total revenue of 175,000 for the time periods(2023&2024).
4. Insights(Strategic Implications to the Business)
   - SHOES has the highest total revenue as a result of higher average unit price(35) as compared to HATS(21.25) which has the highest sales order.
   - JACKETS and SOCKS have the lowest quantity sold and total revenue.
   - JACKETS has the highest average unit price(41.67) despite the low average sales(3.67). 
 
### Conclusion
---
- It is recommended that the business focuses on the sales of SHOES in the SOUTHERN REGION as that is the region with the highest total Revenue for both years.  
- The price for the JACKETS should be reviewed lower to allow for new customers to quickly buy the products.
- Also, the product(JACKETS) can be tested in the Southern Region so as to see how the sales of JACKETS will fare in the region that is our top selling region.
- Prices for HATS should be reviewed higher so as to increase its total revenue.

                                                               |B|
## Regional Performance
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset

![Screenshot 2024-10-26 013945](https://github.com/user-attachments/assets/c50df9ea-e619-4ec4-bad2-4fe04d230ca2)

![Screenshot 2024-10-26 013938](https://github.com/user-attachments/assets/bb744d03-773f-496b-a10d-15464ec2fd8c)

![Screenshot 2024-10-26 014539](https://github.com/user-attachments/assets/e674cbe2-c346-47e8-b3b3-8f24da9d0676)


### Data Visualization
---
![Screenshot 2024-10-26 014713](https://github.com/user-attachments/assets/82098663-d84d-458f-b566-9c57f086bcc4) ![Screenshot 2024-10-26 014628](https://github.com/user-attachments/assets/9c4ca560-d46a-417f-8b8b-2bc814282223)

![IMG-20241027-WA0022](https://github.com/user-attachments/assets/e40dcfa6-e9e8-4ad8-9125-101ba367f762) ![IMG-20241027-WA0021](https://github.com/user-attachments/assets/aabfe12a-709f-4675-91f7-87f2f44f0fe4)

![sales by product and region](https://github.com/user-attachments/assets/d101cce1-acf5-4b83-8b0a-f394f3b1750b)

   
### Inferences
---
1. Overall Sales Trends by Month
   - The SOUTHERN REGION had the overall highest quantity sold with 122,500pcs for the two Year periods(2023&2024).
   - FEBRUARY and JUNE are the top most selling months with total quantity sold of 50,000pcs for both for the two year periods.
   - SOUTHERN REGION had the highest total sales in the months of FEBRUARY and JUNE respectively.
   - WEST and NORTH REGION has the lowest overall quantity sold for DECEMBER and MAY respectively for the two year periods with total quantity sold of 12,500pcs for both regions.
2. Overall Revenue Trends by Month
   - The SOUTHERN REGION had the highest Revenue of 4,675,000 for the two Year periods(2023&2024).
   - WEST and NORTH REGION has the lowest Total Revenue for APRIL and SEPTEMBER respectively for the two year periods with Total Revenue of 237,500 and 175,000 respectively for both regions.
3. Insights(Strategic Implications to the Business)
   - WEST REGION has the lowest total revenue of 1,512,500 with an average price of 22 for the entire region.
   - SOUTH REGION has the highest total revenue of 4,675,000 and average unit price of 38 for the entire region.


### Conclusion
---
- The business needs to focus on the WEST and NORTH REGION and implement ways to improve their sales and revenue. HATS and JACKETS have the lowest sales and revenue asides SHIRTS which are sold in the NORTH. 
- More research needs to be done on why there is low demand for HATS and JACKETS in the NORTH. Probably lower prices or better designs needs to be introduced to increase the demands.
- More promotional contents/activities need to be introduced in both the region with the best sales/revenue(SOUTH) and also the region with the OVERALL poorest performances(WEST). Promotional contents like Billboards, tv adverts, in-store-fliers for special sales discounts, black friday, etc. to encourage more sales.


                                                               |C|
## Monthly sales trends
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset

![Screenshot 2024-10-26 014341](https://github.com/user-attachments/assets/0f3a9adc-a9a4-430c-9039-a77252e38b0a)


### Data Visualization
---

![Screenshot 2024-10-26 014656](https://github.com/user-attachments/assets/9647b6a0-b6ed-46ad-83b3-1083975df1d3)

   
### Inferences
---
1. Overall Sales Trends by Month
   - FEBRUARY and JUNE are the top most selling months with total quantity sold of 50,000pcs for both for the two year periods.
   - The month of MAY had the lowest number of units sold with 5,000pcs of JACKETS sold in the Year 2023 and 7,500pcs of JACKETS sold in the Year 2024.
   - Sales are lowest in MAY and DECEMBER with total quantity sold of 12,500 for both for the two year periods.
   - Cus1151 is the highest buying customer for both time periods(2023&2024) With a total order of 911UNITS. The customer bought the most products(HATS) in the month of MARCH with a total order of 199units.
     
2. Regional Performance
   - The SOUTHERN REGION had the overall highest quantity sold with 122,500pcs for the two Year periods(2023&2024).
   - FEBRUARY and JUNE are the top most selling months with total quantity sold of 50,000pcs for both for the two year periods.
   - SOUTHERN REGION had the highest total sales in the months of FEBRUARY and JUNE respectively.
   - WEST and NORTH REGION has the lowest overall quantity sold for DECEMBER and MAY respectively for the two year periods with total quantity sold of 12,500pcs for both regions.
     
3. Insights(Strategic Implications to the Business)
   - The month of DECEMBER and MAY have the lowest total sales of 12,500(GLOVES and JACKETS respectively) each.
   - HAT AND GLOVE have the HIGHEST AVERAGE SALES PER PRODUCT with a figure oF 8.33 followed by HAT with AVERAGE SALES of 8PCS
   - Cus1151 ORDERED FOR ITEMS FROM THE STORE THE MOST WITH A TOTAL ORDER OF 911UNITS for the two year periods which shows consistency and loyalty to the brand.

### Conclusion
---
The business needs to do a thorough review of the products needed in each Region it has stores in. For example, GLOVES has the lowest total sales in the WEST REGION (12,500), possibly due to the low demand in that region. As December is a festive season, other products like SHOES, Christmas wears are usually more in high demand, so all these should be incorporated into the Retail Store's analysis.
Also, there should be discounts available in the month of December and marketing gimmicks like BUY 1 GET 1 FREE to encourage more sales.



                                                               |D|

                                          
## Average sales per product
---
### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset

![Screenshot 2024-10-26 013929](https://github.com/user-attachments/assets/1b2b195e-b581-4dc1-b605-02df621bf865)


### Data Visualization
---
![Screenshot 2024-10-26 014616](https://github.com/user-attachments/assets/cbef74c8-0eac-4ed9-818a-b10fb8c83a0c)

![IMG-20241027-WA0026](https://github.com/user-attachments/assets/6e8e5888-99e3-4f3f-8f66-4462aab162ef)

   
### Inferences
---
1. Overall Sales Trends by Month
   - SHOES and GLOVES have the highest average sales of 8.33 each for the MONTHS of FEBRUARY and JUNE for the year periods(2023&2024).
   - JACKETS has the lowest average sales of 2.5 in the month of MAY for the year periods(2023&2024).

2. Regional Performance
   - SOUTH region has the highest average sales of 10 for the month of FEBRUARY for the year periods(2023&2024).
   - NORTH region had the lowest average sales of 2.5 in the month of MAY for the year periods(2023&2024).
   
3. Insights(Strategic Implications to the Business)
   - The weather in the month of MAY might be hot in the NORTHERN REGION and so might not be comfortable for customers to buy JACKETS much in that period so JACKETS sales might pick up in the next month.
   - Most of the products being sold in the NORTH region isnt good for the MAY weather. This brought about low sales in that period in the region.
### Conclusion
---
The Company should add more products to their current line of products for example for the NORTH region to accommodate all weathers preferences.
    
                                                               
                                                               
                                                               |E|
## Total revenue by region
---

### Exploratory Data Analysis
---
- Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset

![Screenshot 2024-10-26 013945](https://github.com/user-attachments/assets/566ce48e-273a-49a5-a6eb-0e9d57a576e3)



### Data Visualization
---
![IMG-20241027-WA0021](https://github.com/user-attachments/assets/c901563d-0c14-40e0-9b45-0e9596663f58)

![Screenshot 2024-10-26 014628](https://github.com/user-attachments/assets/097fb909-d645-46f2-a5d2-d75b3e8926f7)

   
### Inferences
---
1. Overall Revenue Trends by Month
   - The month of FEBRUARY has the highest total revenue of 2,750,000 from the sales of SHOES.
   - SEPTEMBER has the lowest total revenue of 175,000 from the sales of HAT.
2. Regional Performance
   - SOUTH REGION has the highest total revenue of 2,750,000 from the sales of SHOES.
   - NORTH REGION has the lowest total revenue of 175,000 from the sales of HAT.
3. Insights(Strategic Implications to the Business)
   - SHOES has the highest total revenue of 3,087,500 with an average unit price of 35 as compared to SOCKS with the lowest total revenue of 912,500 and average unit price of 18.33


### Conclusion
---
The Company should add more products to their current line of products for example, for the NORTH region to accommodate all weathers preferences. SOCKS is a very slow moving product so it is advisable the Retail Store should not stock too much quantities per time so as to avoid too much dead stock.
               
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




