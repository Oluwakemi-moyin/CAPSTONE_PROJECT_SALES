# Sales Performance Analysis for MIE MIE Retail Store

[Project Overview](#project-overview) 

[Problem](#problem)

[Dataset Used](#dataset-used)

[Key Insights](#Key-Insights)

[Tools Used](#tools-used)

[Process](#process)

[Dashboard Overview](#dashboard-overview)

[Exploratory Data Analysis](#exploratory-data-analysis)

[Data Visualization](#data-visualization)

[Tables](#tables)


### Project Overview
---
This project involved a comprehensive analysis of sales performance for MIE MIE Retail Store to extract valuable insights into customer preferences, product sales trends, and regional performance.

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

### Key Insights
1. Objective: To provide MIE MIE Retail Store with a deep understanding of its sales landscape and inform strategic decision-making.
2. Action: Conducted end-to-end data analysis from raw sales data, encompassing data understanding, cleaning (Microsoft Excel, Power BI), modeling, and in-    depth analysis (Microsoft Excel, SQL Server, Power BI DAX).
3. Result: Uncovered critical insights into top-selling products, regional performance, monthly sales trends, average sales per product, and total revenue     by region.
4. Impact: Delivered actionable recommendations to optimize product pricing, streamline inventory, enhance regional marketing efforts, and ultimately drive    revenue growth and operational efficiency.

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

### Detailed Breakdown by Analysis Area:


                                                               |A|
## Top-selling products
---
### Top-Selling Products & Sales Trends:
1. Objective: To identify the most impactful products and understand their performance over time.
2. Action: Performed detailed exploratory data analysis using Excel Pivot Tables and SQL queries to determine total sales per product, highest selling         products by value, and monthly unit sales. Visualized trends in Power BI.
3. Result: Identified HAT (15,929 pcs) as the top-selling product by quantity and SHOES (₦613,380 revenue) as the top performer by revenue across 2023-        2024. Pinpointed sales dips in May and December and peaks in February and June.
4. Impact: Provided essential data for inventory management, highlighting products for increased stocking and informing seasonal promotional strategies,       such as reviewing HAT prices for higher revenue potential.

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset
![Screenshot 2024-11-05 071212](https://github.com/user-attachments/assets/61e11ebe-c05f-48ed-a545-f1b1cfddf0c0)
![Screenshot 2024-11-05 071822](https://github.com/user-attachments/assets/37cd30db-7d6f-47fb-b923-a387fd27c59f)


### Data Visualization
---
![Screenshot 2024-11-05 151837](https://github.com/user-attachments/assets/d0970dae-c55f-4174-96f4-4f90850330c1)
![Screenshot 2024-11-05 151926](https://github.com/user-attachments/assets/8123d882-1bc6-43d7-9191-facbe827822a)


                                                               |B|
## Regional Performance
---

### Regional Performance Analysis:

1. Objective: To evaluate sales effectiveness across different retail regions and pinpoint areas for improvement or leverage.
2. Action: Analyzed regional sales data, total quantities sold, and total revenue using Excel Pivot Tables and Power BI visualizations. Investigated           product sales within each region.
3. Result: Determined the Southern Region as the highest performer (24,298 units, ₦927,820 revenue), with SHOES and GLOVES as its main drivers. Identified     the West and North Regions as underperforming in overall sales and revenue.
4. Impact: Guided regional strategic planning, advising focus on the high-performing South and prompting further research and targeted interventions (e.g.,    product diversification, increased promotions) for the West and North regions

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset

![Screenshot 2024-11-05 071244](https://github.com/user-attachments/assets/7e9774db-c1f2-4d7b-80d6-079219bf3174)  ![Screenshot 2024-11-05 071436](https://github.com/user-attachments/assets/8877c18d-d477-46fc-8d68-c0bf3243515a)
![Screenshot 2024-11-05 071356](https://github.com/user-attachments/assets/a72208d5-817f-4b2d-9d14-8cdab54df1c2)  ![Screenshot 2024-11-05 071313](https://github.com/user-attachments/assets/59ba0506-e833-437d-b807-abaf6eebe78c)


### Data Visualization
---
![Screenshot 2024-11-05 151915](https://github.com/user-attachments/assets/1341977a-091b-4a03-b6e7-a0e3f99c5b12)
![Screenshot 2024-11-05 152418](https://github.com/user-attachments/assets/0bba72ce-0871-481e-8207-af3fa8c8b256)

   
                                                               |C|
## Monthly sales trends
---
### Monthly Sales & Revenue Trends:

1. Objective: To understand the cyclical nature of sales and revenue to optimize planning.
2. Action: Compiled monthly sales and revenue reports, conducting analysis on overall trends and specific product performances within different months         using Excel and Power BI.
3. Result: Confirmed February and June as peak sales months, while December and May showed the lowest sales figures (e.g., JACKETS and SOCKS). Noted a         10.09% overall revenue drop from 2023 to 2024.
4. Impact: Informed seasonal sales campaigns, inventory adjustments to align with demand fluctuations, and prompted recommendations for festive season         promotions (e.g., "Buy 1 Get 1 Free" in December) to counteract low periods.


### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset

![Screenshot 2024-11-05 071301](https://github.com/user-attachments/assets/96438eb6-3d65-42bc-b8c2-b2938442ab29)

![Screenshot 2024-11-05 072402](https://github.com/user-attachments/assets/9b151532-a667-4a0e-a9df-15dbd9f5847e)  ![Screenshot 2024-11-05 072449](https://github.com/user-attachments/assets/cdb9d78a-ac3b-4b8a-ba0e-9f5e3cf00d2a)


### Data Visualization
---

![Screenshot 2024-11-05 152711](https://github.com/user-attachments/assets/88a6ae9b-97f2-4260-9d8a-943d0421a3a8)

                                                               |D|

                                          
## Average sales per product
---

### Average Sales Per Product Analysis

1. Objective: To assess the efficiency and typical performance of individual product units.
2. Action: Calculated average sales per product and average unit price across timeframes and regions using Excel formulas and Power BI DAX functions.
3. Result: Revealed SHOES and SHIRTS had the highest average sales in their respective peak months, while JACKETS showed the lowest average sales in May.
4. Impact: Provided insights for refining product pricing strategies and optimizing product mix, especially in regions with specific environmental or          demand factors (e.g., adapting Northern region's product line to weather).

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset

![Screenshot 2024-11-05 072449](https://github.com/user-attachments/assets/06d5448f-e00a-47ac-ae3d-879add29cb51)


### Data Visualization
---
![Screenshot 2024-11-05 152031](https://github.com/user-attachments/assets/438ad0bd-15a2-4edb-8078-a258950fd6c4)
                                                               
                                                               
                                                               |E|
## Total revenue by region
---

### Total Revenue by Region Analysis

1. Objective: To understand the primary drivers of revenue across different geographical areas.
2. Action: Performed in-depth analysis of total revenue figures by region, correlated with unit price and quantity sold, using Excel and Power BI for          comprehensive visualization.
3. Result: Reconfirmed the Southern Region's leading revenue contribution (₦927,820), primarily from SHOES sales. Identified a strong positive relationship    between quantity sold/unit price and revenue.
4. Impact: Reinforced recommendations for regional investment and pricing strategies to maximize revenue. Advised on stock management for slow-moving          products (like SOCKS) to avoid dead stock and suggested company-wide promotional activities to boost overall sales and revenue.


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




