# Sales Performance Analysis for MIE MIE Retail Store

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
9. Count of CustomerID- this is to know the total number of customers we have.

### Tools Used
---
1. Microsoft Excel [Download here]([SALES DATA-PROJECT - new.xlsx](https://github.com/user-attachments/files/17629692/SALES.DATA-PROJECT.-.new.xlsx))

   - for Data cleaning,
   - for Summarisation of the data and
   - for Visualisation
2. SQL Server [Download here](https://github.com/Oluwakemi-moyin/CAPSTONE_PROJECT_SALES/blob/45562b4eb798e2687a2117a76b117e8043736bf8/SQLQueryPROJECT-SALESDATA.sql)
   - for data querying
3. Microsoft PowerBI [Download here](https://github.com/Oluwakemi-moyin/CAPSTONE_PROJECT_SALES/blob/f7decf1c7891dc15495e283f9f345d741275c45b/sales%20data-%20LITA%20project.pbix)
    - for Summarisation of the dataset and
    - for Visualisations.
4. Github- for profile building

### Process
---
So, how did I tackle this problem?
Well I approached it in 5 steps:
1. Data understanding - the key to success on any data project is to understand the data in detail. So I took the time to understand the data model and domain of the business.

2. Data cleaning - after understanding the business, I then cleaned the available datasets and thought about what an ideal dataset should look like for this problem.
   This was done using the following tools;
    - Microsoft Excel-
         - To check for duplicates
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
            select sum(quantity_sold) as TotalSales,Product from [SALES DATA_CAPSTONE_PROJECT]
            group by Product
            order by  TotalSales desc
            ```
          - Number of transactions per Region
            ```
            select sum(quantity_sold) as TotalSales,Region from [SALES DATA_CAPSTONE_PROJECT]
            group by Region
            order by  TotalSales desc
            ```
          - Highest selling product by sales value
            ```
            Select top 1 sum(quantity_sold) as TotalSales_Top, Product from [SALES DATA_CAPSTONE_PROJECT]
            Group by Product
            order by sum(Quantity_sold) desc
            ```
     - Microsoft Power BI
       - Through the use of DAX functions(calculated measure) for Average Revenue per Product and Calculated columns like Orderdate(Monthly)
       - Use of Charts, Cards, Tables
5. And finally I used these insights to unlock business decisions and to make recommendations on next steps.


### Dashboard Overview
---
![Screenshot 2024-11-05 151727](https://github.com/user-attachments/assets/f2bd04d8-d3fa-408a-b76d-95f9c32c49af)




                                                               |A|
## Top-selling products
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.

![Screenshot 2024-11-05 071212](https://github.com/user-attachments/assets/61e11ebe-c05f-48ed-a545-f1b1cfddf0c0)
![Screenshot 2024-11-05 071822](https://github.com/user-attachments/assets/37cd30db-7d6f-47fb-b923-a387fd27c59f)




### Data Visualization
---
![Screenshot 2024-11-05 151837](https://github.com/user-attachments/assets/d0970dae-c55f-4174-96f4-4f90850330c1)
![Screenshot 2024-11-05 151926](https://github.com/user-attachments/assets/8123d882-1bc6-43d7-9191-facbe827822a)





   
### Inferences
---
1. Overall Sales Trends by Month
   - HAT is the top-selling product of the Retail Store wth total sales of 15,929 pcs, followed by SHOES with  14,402pcs for the time periods(2023&2024).
   - The month of MAY had the lowest number of units sold with 994pcs of JACKETS sold in the Year 2023 and 1,488pcs of JACKETS sold in the Year 2024.
   - Sales are lowest in MAY and DECEMBER with a total quantity sold of 3,459 in year 2023.
   - The month of JULY had the highest sales of 5,940pcs of shirt sold in the Year 2023 and the month of JUNE also had the highest number of units sold with 5,928pcs of GLOVES        sold in the Year 2024.
   - FEBRUARY AND JUNE are the top most selling months with total quantity sold of 9,930pcs and 9,904pcs for both for the two year periods.
   - SHIRTS AND GLOVES have the HIGHEST AVERAGE SALES PER PRODUCT with a figure oF 8.33 followed by HAT with an AVERAGE SALES of 8PCS
2. Regional Performance
   - The SOUTHERN REGION had the highest quantity sold with 24,298pcs for the two Year periods(2023&2024) and highest Revenue of 927,820 for the two Year periods(2023&2024).
   - SHOES, GLOVES AND SOCKS were the products sold in the Southern Region for the two Year periods(2023&2024).
   - SHOES and GLOVES were top selling products in the Southern Region with quantity sold of 9,930PCS and 9,904pcs for each. 
3. Overall Revenue Trends by Month
   - SHOES is the top-selling product of the Retail store with total revenue of 613,380 followed by SHIRT for the time periods(2023&2024).
   - The month of APRIL had the lowest total Revenue of 7,425 for SOCKS sold in the Year 2023 and JULY had a total Revenue of 37,200 for SHOES sold in the Year 2024 which was          the lowest for the year.
   - FEBRUARY has the highest total revenue of 546,300 for SHOES for the time periods(2023&2024).
   - SEPTEMBER has the lowest total revenue of 34,720 for the time periods(2023&2024).
4. Insights(Strategic Implications to the Business)
   - SHOES has the highest total revenue as a result of higher average unit price(35) as compared to HATS(21.26) which has a highest sales order.
   - JACKETS and SOCKS have the lowest quantity sold and total revenue.
   - JACKETS has the highest average unit price(41.68) despite the low average sales(3.66). 
 
### Conclusion
---
- It is recommended that the business focuses on the sales of SHOES in the SOUTHERN REGION as that is the region with the highest total Revenue for both years.  
- Also, the product(JACKETS) can be tested in the Southern Region so as to see how the sales of JACKETS will fare in the region that is our top selling region.
- Prices for HATS should be reviewed higher so as to increase its total revenue.

                                                               |B|
## Regional Performance
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset

![Screenshot 2024-11-05 071244](https://github.com/user-attachments/assets/7e9774db-c1f2-4d7b-80d6-079219bf3174)  ![Screenshot 2024-11-05 071436](https://github.com/user-attachments/assets/8877c18d-d477-46fc-8d68-c0bf3243515a)
![Screenshot 2024-11-05 071356](https://github.com/user-attachments/assets/a72208d5-817f-4b2d-9d14-8cdab54df1c2)  ![Screenshot 2024-11-05 071313](https://github.com/user-attachments/assets/59ba0506-e833-437d-b807-abaf6eebe78c)



### Data Visualization
---
![Screenshot 2024-11-05 151915](https://github.com/user-attachments/assets/1341977a-091b-4a03-b6e7-a0e3f99c5b12)
![Screenshot 2024-11-05 152418](https://github.com/user-attachments/assets/0bba72ce-0871-481e-8207-af3fa8c8b256)

   
### Inferences
---
1. Overall Sales Trends by Month
   - The SOUTHERN REGION had the overall highest quantity sold with 9,930pcs for the two Year periods(2023&2024).
   - FEBRUARY AND JUNE are the top most selling months with total quantity sold of 9,930pcs and 9,904pcs for both for the two year periods.
   - SOUTHERN REGION had the highest total sales in the months of FEBRUARY and JUNE respectively.
   - WEST and NORTH REGION has the lowest overall quantity sold for DECEMBER and MAY respectively for the two year periods with total quantity sold of 2,465pcs and 2,482pcs for       both regions.
2. Overall Revenue Trends by Month
   - The SOUTHERN REGION had the highest Revenue of  927,820.00  for the two Year periods(2023&2024).
   - WEST and NORTH REGION has the lowest Total Revenue for APRIL and SEPTEMBER respectively for the two year periods with Total Revenue of 46,865.00 and 34,720.00 respectively       for both regions.
3. Insights(Strategic Implications to the Business)
   - WEST REGION has the lowest total revenue of 46,865.00  with an average price of 22.03 for the entire region.
   - SOUTH REGION has the highest total revenue of 927,820.00 and average unit price of 38.02 for the entire region.


### Conclusion
---
- The business needs to focus on the WEST and NORTH REGION and implement ways to improve their sales and revenue. HATS and JACKETS have the lowest sales and revenue asides SHIRTS for products sold in the NORTH. 
- More research needs to be done on why there is low demand for HATS and JACKETS in the NORTH. Probably better designs or other products needs to be introduced to increase the demands.
- More promotional contents/activities need to be introduced in both the region with the best sales/revenue(SOUTH) and also the region with the OVERALL poorest performances(WEST). Promotional contents like Billboards, tv adverts, in-store-fliers for special sales discounts, black friday, etc. to encourage more sales.


                                                               |C|
## Monthly sales trends
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset

![Screenshot 2024-11-05 071301](https://github.com/user-attachments/assets/96438eb6-3d65-42bc-b8c2-b2938442ab29)

![Screenshot 2024-11-05 072402](https://github.com/user-attachments/assets/9b151532-a667-4a0e-a9df-15dbd9f5847e)  ![Screenshot 2024-11-05 072449](https://github.com/user-attachments/assets/cdb9d78a-ac3b-4b8a-ba0e-9f5e3cf00d2a)


### Data Visualization
---

![Screenshot 2024-11-05 152711](https://github.com/user-attachments/assets/88a6ae9b-97f2-4260-9d8a-943d0421a3a8)


   
### Inferences
---
1. Overall Sales Trends by Month
   - FEBRUARY and JUNE are the top most selling months with total quantity sold of 9,930pcs and 9,904pcs for both for the two year periods.
   - The month of MAY had the lowest number of units sold with 994pcs of JACKETS sold in the Year 2023 and 1,488pcs of JACKETS sold in the Year 2024.
   - Sales are lowest in MAY and DECEMBER with a total quantity sold of 4,947 for both periods.
     
2. Regional Performance
   - The SOUTHERN REGION had the overall highest quantity sold with 9,930pcs for the two Year periods(2023&2024).
   - SOUTHERN REGION had the highest total sales in the months of FEBRUARY and JUNE respectively.
   - WEST and NORTH REGION has the lowest overall quantity sold for DECEMBER and MAY respectively for the two year periods with total quantity sold of 2,465pcs and 2,482pcs for       both regions.
     
3. Insights(Strategic Implications to the Business)
   - The month of DECEMBER and MAY have the lowest total sales of (GLOVES and JACKETS respectively) each.
   - GLOVES & SHIRT have the HIGHEST AVERAGE SALES PER PRODUCT with a figure oF 8.33 followed by HAT with AVERAGE SALES of 8.00

### Conclusion
---
The business needs to do a thorough review of the products needed in each Region it has stores in. For example, GLOVES AND SHOES has the lowest total sales in the WEST REGION, possibly due to the low demand in that region. As December is a festive season, other products like Christmas CLOTHES are usually more in high demand, so all these should be incorporated into the Retail Store's analysis.
Also, there should be discounts available in the month of December and marketing gimmicks like BUY 1 GET 1 FREE to encourage more sales.



                                                               |D|

                                          
## Average sales per product
---
### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset

![Screenshot 2024-11-05 072449](https://github.com/user-attachments/assets/06d5448f-e00a-47ac-ae3d-879add29cb51)



### Data Visualization
---
![Screenshot 2024-11-05 152031](https://github.com/user-attachments/assets/438ad0bd-15a2-4edb-8078-a258950fd6c4)




   
### Inferences
---
1. Overall Sales Trends by Month
   - SHOES & SHIRT have the HIGHEST AVERAGE SALES PER PRODUCT with a figure oF 10 & 12 for the MONTHS of FEBRUARY and JULY for the year periods(2023&2024).
   - JACKETS has the lowest average sales of 2.5 in the month of MAY for the year periods(2023&2024).

2. Regional Performance
   - SOUTH region has the highest average sales of 10 for the month of FEBRUARY for the year periods(2023&2024).
   - NORTH region had the lowest average sales of 2.5 in the month of MAY for the year periods(2023&2024).
   
3. Insights(Strategic Implications to the Business)
   - The weather in the month of MAY might be hot in the NORTHERN REGION and so might not be comfortable for customers to buy JACKETS much in that period so JACKETS sales might       pick up in the next month.
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

![Screenshot 2024-11-05 071436](https://github.com/user-attachments/assets/7e6efe99-3bde-4ec6-8af1-d724bd96aa3b)
![Screenshot 2024-11-05 071313](https://github.com/user-attachments/assets/98aa0330-c6ea-49ff-b6b6-fccde2932c37)



### Data Visualization
---

![Screenshot 2024-11-05 152418](https://github.com/user-attachments/assets/45708da4-3fa2-4ced-9e5c-dfd7f9e866e9)
![Screenshot 2024-11-05 152826](https://github.com/user-attachments/assets/97a7e5ab-1f24-4920-9386-754c3301bd2b)
![Screenshot 2024-11-05 152052](https://github.com/user-attachments/assets/a16b351f-f9b4-43d2-b2e4-3660bb0ada03)
![Screenshot 2024-11-05 152040](https://github.com/user-attachments/assets/55517250-ee37-473d-9e7f-98229c2bdefa)

   
### Inferences
---
1. Overall Revenue Trends by Month and Year
   - The month of FEBRUARY has the highest total revenue of 546,300 from the sales of SHOES.
   - SEPTEMBER has the lowest total revenue of 34,720 from the sales of HAT.
   - The Year 2023 had the highest revenue figure of  1,105,330.00 which dropped in the Year 2024 by 10.09%.
   - In 2024, there was a decrease of 23.01% in Total quantity sold from 38,681 units in 2023, this led to a 9.91% reduction in Total Revenue in the year 2024.
   - In 2024, there was a 19.9% decrease in total unit price, which led to a reduction in Total sales in that year and caused a 9.91% reduction in Total Revenue 
2. Regional Performance
   - SOUTH REGION has the highest total revenue of 927,820 of which 546,300 from the sales of SHOES.
   - NORTH REGION has the lowest total revenue of 34,720 from the sales of HAT.
3. Insights(Strategic Implications to the Business)
   - SHOES has the highest total revenue of  613,380.00 with an average unit price of 35 as compared to SOCKS with the lowest total revenue of  180,785.00 and average unit price of 18.34
   - There is a positive relationship between Sum of quantity sold and Revenue. An increase in Sum of quantity sold by 2.98 leads, on average, to a 95.13 unit increase in Revenue, and vice versa.
   - There is a positive relationship between Sum of unit price and Revenue. An increase in Sum of unit price by 16.69 leads, on average, to a 109.40 unit increase in Revenue and vice versa
### Conclusion
---
- There is need to introduce discounts and promos which will increase customers demand, leading to increase in sales, and in turn lead to an increase in Total Revenue. 
Increasing the prices of product will also boost the Total revenue for the Company.
- The Company should add more products to their current line of products for example, for the NORTH region to accommodate all weathers preferences. SOCKS is a very slow moving product so it is advisable the Retail Store should not stock too much quantities per time so as to avoid too much dead stock.
               
### Tables 
---



💻
🥇
Total Revenue and Total Sales per Year
|YEAR| TOTAL REVENUE|TOTAL SALES|
|-----| -----|-----|
|2023|1,105,330|38,681|
|2024|995,760|29,780|

👩‍💻👩🏾‍💻 
Average Revenue and Average Sales per Year
|YEAR| AVERAGE REVENUE|AVERAGE SALES|
|-----| -----|-----|
|2023|185.71|6.5|
|2024|250.88|7.5|




