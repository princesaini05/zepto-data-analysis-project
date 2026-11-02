drop database ecommerce_project;
create database zepto_project;
use zepto_project;

-- Create table
create table zepto (
    s_no serial PRIMARY KEY,
    category VARCHAR(255),
    name VARCHAR(500),
    mrp DECIMAL(10 , 2 ),
    discountPercent DECIMAL(10 , 2 ),
    availableQuantity INT,
    discountedSellingPrice DECIMAL(10 , 2 ),
    weightInGms INT,
    outOfStock VARCHAR(50),
    quantity INT
);

-- Upload Data
SET GLOBAL local_infile = 1;
SHOW GLOBAL VARIABLES LIKE 'local_infile';
LOAD DATA LOCAL INFILE
'D:/DATA ANALYSIS/Mysql Projects/Project 1/zepto_data_v1.csv'
INTO TABLE zepto
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(category, name, mrp, discountPercent, availableQuantity, discountedSellingPrice, weightInGms, outOfStock, quantity);

-- Data Exploration

-- count of rows
select count(*) from zepto;

-- sample data
select * from zepto limit 10;

-- null values
select * from zepto 
where name is null
or
category is null
or
mrp is null
or
discountPercent is null
or
availableQuantity is null
or
discountedSellingPrice is null
or
weightInGms is null
or
outOfStock is null
or
quantity is null;

-- different categories
select distinct category
from zepto
order by category;

-- product in stock vs out of stock
select outOfStock,count(s_no)
from zepto
group by outOfStock;

-- product names present multiple times
select name, count(s_no)
from zepto
group by name
having count(s_no)>1
order by count(s_no) desc; 

-- data cleaning
set SQL_SAFE_UPDATES = 0;
-- product with price = 0

select * from zepto
where discountedSellingPrice=0
or mrp=0;

delete from zepto where mrp=0;

-- convert paise to rupees
update zepto
set mrp=mrp/100.0,
discountedSellingPrice=discountedSellingPrice/100.0;

-- sample data
select * from zepto;