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


