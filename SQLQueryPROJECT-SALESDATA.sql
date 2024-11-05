SELECT * FROM [SALES DATA_CAPSTONE_PROJECT]

1--Total sales for each product category--
select sum(quantity_sold) as TotalSales,Product from [SALES DATA_CAPSTONE_PROJECT]
group by Product
order by  TotalSales desc

select sum(quantity_sold) as TotalSales_Shirt from [SALES DATA_CAPSTONE_PROJECT]
WHERE Product = 'Shirt'

select sum(quantity_sold) as TotalSales_Shoes from [SALES DATA_CAPSTONE_PROJECT]
WHERE Product = 'Shoes'

select sum(quantity_sold) as TotalSales_hat from [SALES DATA_CAPSTONE_PROJECT]
WHERE Product = 'hat'

select sum(quantity_sold) as TotalSales_Socks from [SALES DATA_CAPSTONE_PROJECT]
WHERE Product = 'Socks'

select sum(quantity_sold) as TotalSales_Jacket from [SALES DATA_CAPSTONE_PROJECT]
WHERE Product = 'Jacket'

select sum(quantity_sold) as TotalSales_Gloves from [SALES DATA_CAPSTONE_PROJECT]
WHERE Product = 'Gloves'



2--number of transactions per region--
select sum(quantity_sold) as TotalSales_North from [SALES DATA_CAPSTONE_PROJECT]
WHERE Region = 'North'

select sum(quantity_sold) as TotalSales_South from [SALES DATA_CAPSTONE_PROJECT]
WHERE Region = 'South'

select sum(quantity_sold) as TotalSales_East from [SALES DATA_CAPSTONE_PROJECT]
WHERE Region = 'East'

select sum(quantity_sold) as TotalSales_West from [SALES DATA_CAPSTONE_PROJECT]
WHERE Region = 'West'


select sum(quantity_sold) as TotalSales,Region from [SALES DATA_CAPSTONE_PROJECT]
group by Region
order by  TotalSales desc

3--highest selling product by sales value--
Select top 1 sum(quantity_sold) as TotalSales_Top, Product from [SALES DATA_CAPSTONE_PROJECT]
Group by Product
order by sum(Quantity_sold) desc



4--total revenue for each product--

select sum(Revenue) as TotalRevenue,Product from [SALES DATA_CAPSTONE_PROJECT]
group by Product
order by  TotalRevenue desc

select sum(Revenue) as TotalRevenue_Shirt from [SALES DATA_CAPSTONE_PROJECT]
WHERE Product = 'Shirt'

select sum(Revenue) as TotalRevenue_Shoes from [SALES DATA_CAPSTONE_PROJECT]
WHERE Product = 'Shoes'

select sum(Revenue) as TotalRevenue_hat from [SALES DATA_CAPSTONE_PROJECT]
WHERE Product = 'hat'

select sum(Revenue) as TotalRevenue_Socks from [SALES DATA_CAPSTONE_PROJECT]
WHERE Product = 'Socks'

select sum(Revenue) as TotalRevenue_Jacket from [SALES DATA_CAPSTONE_PROJECT]
WHERE Product = 'Jacket'

select sum(Revenue) as TotalRevenue_Gloves from [SALES DATA_CAPSTONE_PROJECT]
WHERE Product ='Gloves'





5--monthly sales total for the current year--

select month(orderdate) as Month, sum(quantity_sold) as TotalSales from [SALES DATA_CAPSTONE_PROJECT]
where YEAR(OrderDate) =YEAR(GETDATE())
Group by month(orderdate) 
order by Month


6--top 5customers by total purchase amount--

Select top 5 sum(quantity_sold) as TotalSales_Top, Customer_Id from [SALES DATA_CAPSTONE_PROJECT]
Group by Customer_Id
order by sum(Quantity_sold) desc


7--percentage of total sales by each region--
select sum(Quantity_sold) * 100/(select sum(Quantity_sold) from [SALES DATA_CAPSTONE_PROJECT]) as PercentageSales_North from [SALES DATA_CAPSTONE_PROJECT]
where Region = 'North'

select sum(Quantity_sold) * 100/(select sum(Quantity_sold) from [SALES DATA_CAPSTONE_PROJECT]) as PercentageSales_South from [SALES DATA_CAPSTONE_PROJECT]
where Region = 'South'

select sum(Quantity_sold) * 100/(select sum(Quantity_sold) from [SALES DATA_CAPSTONE_PROJECT]) as PercentageSales_East from [SALES DATA_CAPSTONE_PROJECT]
where Region = 'East'

select sum(Quantity_sold) * 100/(select sum(Quantity_sold) from [SALES DATA_CAPSTONE_PROJECT]) as PercentageSales_West from [SALES DATA_CAPSTONE_PROJECT]
where Region = 'West'


select sum(Quantity_sold) * 100/(select sum(Quantity_sold) from [SALES DATA_CAPSTONE_PROJECT]) as PercentageSales, Region from [SALES DATA_CAPSTONE_PROJECT]
group by Region
order by  PercentageSales desc


8--products with no sales in the last quarter--

select OrderID, Product , SUM(quantity_sold) as TotalSales from [SALES DATA_CAPSTONE_PROJECT]
where orderdate is null or orderdate < DATEADD(quarter,-1,GETDATE())
GROUP BY OrderID,Product
having SUM(quantity_sold)=0


select OrderID, Product , quantity_sold from [SALES DATA_CAPSTONE_PROJECT]
where orderdate is null or orderdate < DATEADD(quarter,-1,GETDATE())
GROUP BY OrderID,Product,Quantity_sold
having quantity_sold=0

