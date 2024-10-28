# Sales Performance Analysis for a Retail Store

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
       - Through the use of DAX functions(calculated measure) for Average Revenue per Product and Conditional columns like Orderdate(Monthly)
       - Use of Charts, Cards, Tables
5. And finally I used these insights to unlock business decisions and to make recommendations on next steps.

                                                               |A|
## Top-selling products
---

### Exploratory Data Analysis
---
- Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset
- Microsoft Power BI to summarise and analyse the dataset
![Screenshot 2024-10-26 013918](https://github.com/user-attachments/assets/855d768c-8507-4ee9-80b7-4bdc76350033)


### Data Visualization
---
![Screenshot 2024-10-26 014539](https://github.com/user-attachments/assets/8d83f38d-6136-4db8-a094-68d7724a8708)
![IMG-20241027-WA0023](https://github.com/user-attachments/assets/d78a3b95-306a-4103-a869-99d561a698c9)
![Screenshot 2024-10-27 232613](https://github.com/user-attachments/assets/c8d22ff0-d693-4e62-9417-431b565c0b6b)

   
### Inferences
---
1. Overall Sales Trends by Month
   - HAT is the top-selling product of the Retail Store wth total sales of 80,000pcs, followed by SHOES with 72,500 pcs for the time periods(2023&2024).
   - The month of MAY had the lowest number of units sold with 5,000pcs of JACKETS sold in the Year 2023 and 7,500pcs of JACKETS sold in the Year 2024.
   - Sales are lowest in MAY and DECEMBER with total quantity sold of 12,500 for both for the two year periods.
   - The month of JULY had the highest sales of 30,000pcs of shirt sold in the Year 2023 and the month of JUNE also had the highest number of units sold with 30,000pcs of GLOVES sold in the Year 2024.
   - FEBRUARY AND JUNE are the top most selling months with total quantity sold of 50,000pcs for both for the two year periods.
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
   - SHOES has the highest total revenue as a result of higher average unit price(35) as compared to HAT(21.25) which has the highest sales order.
   - JACKETS and SOCKS have the lowest quantity sold and total revenue.
   - JACKETS have the highest average unit price despite the low sales. 
 
### Conclusion
---
- It is recommended that the business focuses on the sales of SHOES in the SOUTHERN REGION as that is the region with the highest total Revenue for both years.  
- The price for the JACKETS should be reviewed lower to allow for new customers quickly buy the products.
- Also, the product can be tested in the Southern Region so as to see how the sales of JACKETS will fare in the region that is our top selling region.
                                                               |B|
## Regional Performance
---

### Exploratory Data Analysis
---
- Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset
- Microsoft Power BI to summarise and analyse the dataset
![Screenshot 2024-10-26 013945](https://github.com/user-attachments/assets/c50df9ea-e619-4ec4-bad2-4fe04d230ca2)
![Screenshot 2024-10-26 013938](https://github.com/user-attachments/assets/bb744d03-773f-496b-a10d-15464ec2fd8c)
![Screenshot 2024-10-26 014539](https://github.com/user-attachments/assets/e674cbe2-c346-47e8-b3b3-8f24da9d0676)


### Data Visualization
---
![Screenshot 2024-10-26 014713](https://github.com/user-attachments/assets/82098663-d84d-458f-b566-9c57f086bcc4)
![Screenshot 2024-10-26 014628](https://github.com/user-attachments/assets/9c4ca560-d46a-417f-8b8b-2bc814282223)
![IMG-20241027-WA0022](https://github.com/user-attachments/assets/e40dcfa6-e9e8-4ad8-9125-101ba367f762)
![IMG-20241027-WA0021](https://github.com/user-attachments/assets/aabfe12a-709f-4675-91f7-87f2f44f0fe4)

   
### Inferences
---
1. Overall Sales Trends by Month
   - The SOUTHERN REGION had the highest quantity sold with 122,500pcs for the two Year periods(2023&2024).
   - FEBRUARY and JUNE are the top most selling months with total quantity sold of 50,000pcs for both for the two year periods.
   - SOUTHERN REGION had the highest total sales in the months of FEBRUARY and JUNE respectively.
2. Overall Revenue Trends by Month
   - The SOUTHERN REGION had the highest Revenue of 4,675,000 for the two Year periods(2023&2024).
3. Insights(Strategic Implications to the Business)
- FEBRUARY AND JUNE ARE THE TOP MOST SELLING MONTHS WITH TOTAL QUANTITY SOLD OF 50,000 FOR THE TWO YEAR PERIODS(2023&2024)
- SALES ARE LOWEST IN MAY AND DECEMBER WITH TOTAL QUANTITY SOLD OF 12,500 FOR THE TWO YEAR PERIODS(2023&2024)
- THE SOUTHERN REGION HAS THE HIGHEST QUANTITY SOLD WITH 122,500 FOR THE TWO YEAR PERIODS(2023&2024) AND ALSO THE HIGHEST REVENUE OF 4,675,000 FOR YEAR 2023 &2024
- THE YEAR 2023 WAS THE BEST PERFORMING YEAR WITH TOTAL SALES OF 195,000
- HAT IS THE MOST ORDERED PRODUCT OF THE RETAIL STORE WITH TOTAL SALES OF 80,000 FOLLOWED BY SHOES WITH 72,500 PIECES
- HAT AND GLOVE HAVE THE HIGHEST AVERAGE SALES PER PRODUCT WITH A FIGURE OF 8.33 FOLLOWED BY HAT WITH AVERAGE SALES OF 8PCS
- Cus1151 ORDERED FOR ITEMS FROM THE STORE THE MOST WITH A TOTAL ORDER OF 911UNITS
### Conclusion
---
                                                               |C|
## Monthly sales trends
---

### Exploratory Data Analysis
---
- Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset
- Microsoft Power BI to summarise and analyse the dataset
![Screenshot 2024-10-26 014341](https://github.com/user-attachments/assets/0f3a9adc-a9a4-430c-9039-a77252e38b0a)


### Data Visualization
---
![Screenshot 2024-10-26 014656](https://github.com/user-attachments/assets/9647b6a0-b6ed-46ad-83b3-1083975df1d3)

   
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
                                                               |D|
## Total sales by Product, Region
---

### Exploratory Data Analysis
---
- Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset
- Microsoft Power BI to summarise and analyse the dataset
![Screenshot 2024-10-26 013918](https://github.com/user-attachments/assets/5fc2e27a-bb7e-44eb-bf5c-42436e85aacb)
![Screenshot 2024-10-26 014539](https://github.com/user-attachments/assets/0d6360bd-f236-4c6a-94b7-ef17eb7d965e)

### Data Visualization
---
![Screenshot 2024-10-26 014601](https://github.com/user-attachments/assets/624f60f5-820f-4ce6-a556-6d9494a4e459)

 
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
                                                               |E|
## Average sales per product
---
### Exploratory Data Analysis
---
- Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset
- Microsoft Power BI to summarise and analyse the dataset

![Screenshot 2024-10-26 013929](https://github.com/user-attachments/assets/1b2b195e-b581-4dc1-b605-02df621bf865)


### Data Visualization
---
![Screenshot 2024-10-26 014616](https://github.com/user-attachments/assets/cbef74c8-0eac-4ed9-818a-b10fb8c83a0c)
![IMG-20241027-WA0026](https://github.com/user-attachments/assets/6e8e5888-99e3-4f3f-8f66-4462aab162ef)

   
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
                                                               |F|
## Total revenue by region
---

### Exploratory Data Analysis
---
- Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset
- Microsoft Power BI to summarise and analyse the dataset
![Screenshot 2024-10-26 013945](https://github.com/user-attachments/assets/566ce48e-273a-49a5-a6eb-0e9d57a576e3)



### Data Visualization
---
![IMG-20241027-WA0021](https://github.com/user-attachments/assets/c901563d-0c14-40e0-9b45-0e9596663f58)
![Screenshot 2024-10-26 014628](https://github.com/user-attachments/assets/097fb909-d645-46f2-a5d2-d75b3e8926f7)

   
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
               
- Filtered chart for Year 2023
  
- Filtered Chart for Year 2024
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




