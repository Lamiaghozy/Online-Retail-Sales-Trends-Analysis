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