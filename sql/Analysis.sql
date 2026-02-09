-- Create Database sales_analysis;
-- use sales_analysis;

-- create table superstore (
-- ship_mode varchar(50),
-- Segment varchar(50),
-- Country varchar(20),
-- City varchar(20),
-- State varchar(20),
-- Postal_Code int,
-- Region varchar(20),
-- Category varchar(50),
-- Sub_Category Varchar(50),
-- Sales Decimal(10,2),
-- Quantity int,
-- Discount decimal(10,2),
-- Profit decimal(10,2)
-- );

select * from superstore limit 5;

-- select Count(*) as total_rows from superstore;

-- ===============================
-- BASIC ANALYSIS
-- ===============================

-- Q1: Total sales
-- select sum(Sales) as Total_sales from superstore;

-- Q2: Sales by region
-- select region, sum(sales) as TotalRegionSales
-- from superstore
-- group by region
-- order by TotalRegionSales asc;

-- Q3: Which category performs best?
-- select Category, Sum(sales) as Total_sales
-- from superstore
-- group by Category
-- order by Total_sales Desc;

-- Q4: What is the total profit?
-- select sum(Profit) as Total_Profit from superstore;

-- Q5: Are there categories with losses?
-- select Category, sum(Profit) as Total_Loss
-- from superstore
-- group by Category 
-- Having Total_Loss < 0;

-- ===============================
-- ADVANCED ANALYSIS
-- ===============================

-- Q6: Top 10 products by sales , Top 10 sub-categories by total sales
-- select Sub_Category as Product, Sum(sales) as TotalSales
-- from superstore
-- group by Sub_Category
-- Order by TotalSales Desc
-- Limit 10;

-- Q7: Which sub-categories are making losses (negative total profit)?
-- select Sub_Category, Sum(Profit) as Loss
-- from superstore
-- group by Sub_Category
-- having Sum(Profit) <0
-- order by Loss Desc;

-- Q8: Does giving higher discounts reduce profit?
-- select Discount, Round(Avg(Profit), 2) as Avg_profit
-- from superstore
-- Group by Discount
-- order by Discount Asc;


