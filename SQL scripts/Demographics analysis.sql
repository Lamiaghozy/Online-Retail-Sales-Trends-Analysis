--- DEMOGRAPHICS

--- Countries driving most of the sales
select sales, country
from sales_data_sample
GROUP by country
order by sales desc

--- sales of cities within countries
SELECT sales, country, city 
from sales_data_sample
group by country, city
order by sales desc

--- Most Purchased product per country
select MAX(quantityordered)as most_purchased_product_country, productline as product_name, country
from sales_data_sample
group by 3, 2
order by 1 DEsc


---PRODUCT ANALYSIS

--Identify the total number of invoices, unique customers, and product categories.

--- order number as number of invoices
Select  COUNT( DISTINCT ordernumber) num_of_invoices
from sales_data_sample
--- 307

--- Customer name as unmber of unique customers
SELECT count (DISTINCT customername)
from sales_data_sample
--- 92

--- Product Line as product category
SELECT Count (DISTINCT productline)as Product_category
from sales_data_sample
--- 7

--- Product Code as Product Subcategory
select count (DISTINCT productcode) as product_sub_category
 from sales_data_sample
--- 109
 
--- I assumed that the order line number is the number of manufacturing lines responsible for the production of the products categories and their sub categories 
SELECT COUNT (DISTINCT orderlinenumber) as num_of_manufacturing_lines
from sales_data_sample
--- 18


---SALES ANALYSIS

--- Total Sales Amount
SELECT Round (SUM(sales),0)
from sales_data_sample
---10032629

--- Average Order Value
SELECT Round(AVG(sales), 2)
from sales_data_sample
--3553.89

--- Average Order Quantity (number of items purchased per order)
SELECT Round(AVG(quantityordered), 2)
FROM sales_data_sample
--35.09

--- Most Frequently Purchased Items.
Select Round(MAX(quantityordered), 0) as quantity_purchased, productline as Product_name
from sales_data_sample
Group by 2
order by 1 DESC

--1,A--- Price of Each Product, price of each product subcategory, highest price of product and its subcategory.
select priceeach as price, productline as product_name
from sales_data_sample
group by 2
order by 1 desc
--- This Query is intended to have a general knowledge of the prices of each of the 7 main product categories.

--1,B---Product price and its sub category
select priceeach as price, productcode as product_category, productline as product_name
from sales_data_sample
group by 2,3
order by 1 DESC,2 desc
--- This Query went into more details categorizing the products into their subcategories and organizing from highest to lowest 
--according to the product and its subcategory prices.

--- Order Status Analysis
SELECT status, COUNT(*) as order_status
FROM sales_data_sample
WHERE status IN ('In Process', 'Shipped', 'Cancelled', 'On Hold', 'Disputed')
GROUP BY status;
--- Shipped = 2617 orders, in Process = 41 orders, Disputed = 14 orders, On hold = 44 orders, cancelled = 60 orders.

--- Deal Size Analysis
SELECT dealsize, COUNT(*) as deal_size
FROM sales_data_sample
WHERE dealsize IN ('Large', 'Medium', 'Small')
Group by dealsize
--- Large = 157 deals, Medium = 1384 deals, Small = 1282 deals


---TIME LINE ANALYSIS

--- DATES

--- Highest sales achievement per year 
select sum(sales) as total_sales, year_id as year
from sales_data_sample
group by 2
order by sales desc

--- Sales analysis in 2003
select sum(sales) as total_sales, month_id as month, qtr_id as Quarter
from sales_data_sample
where year_id = 2003
group by month_id
order by total_sales

--- most frequent purchased products in 2003
select Max(quantityordered) as Most_frequent_purchased, productline as product, month_id as month
from sales_data_sample
where year_id = 2003
group by 2, 3
order by 1 desc

--- Sales analysis in 2003
select sum(sales) as total_sales, month_id as month, qtr_id as Quarter
from sales_data_sample
where year_id = 2003
group by month_id
order by total_sales


--- most frequent purchased products in 2004
select Max(quantityordered) as Most_frequent_purchased, productline as product, month_id as month
from sales_data_sample
where year_id = 2004
group by 2, 3
order by 1 desc

--- Sales analysis in 2004
select sum(sales) as total_sales, month_id as month, qtr_id as Quarter
from sales_data_sample
where year_id = 2004
group by month_id
order by total_sales


--- most frequent purchased products in 2005
select Max(quantityordered) as Most_frequent_purchased, productline as product, month_id as month
from sales_data_sample
where year_id = 2005
group by 2, 3
order by 1 desc

--- Sales analysis in 2005
select sum(sales) as total_sales, month_id as month, qtr_id as Quarter
from sales_data_sample
where year_id = 2005
group by month_id
order by total_sales






