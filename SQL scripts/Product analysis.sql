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

