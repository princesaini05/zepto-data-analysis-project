# Zepto SQL Data Analysis Project

## Project Overview
This project analyzes Zepto product and inventory data using **MySQL**. It covers data exploration, data cleaning, and business-focused SQL analysis to understand product pricing, discounts, stock availability, category revenue, and inventory weight.

## Objectives
- Explore product-level data and identify data-quality issues.
- Clean records with invalid MRP values and convert prices from paise to rupees.
- Analyze discounts and product value.
- Estimate revenue by product category.
- Examine stock availability and inventory weight.

## Tools & Technologies
- **MySQL**
- **SQL** (SELECT, WHERE, DISTINCT, GROUP BY, ORDER BY, CASE, aggregate functions, DELETE, UPDATE)

## Project Workflow
1. Create the `zepto_project` database and `zepto` table.
2. Import the CSV dataset into MySQL.
3. Explore row counts, sample records, null values, categories, stock status, and duplicate product names.
4. Clean the data by removing records with zero MRP and converting price values from paise to rupees.
5. Run SQL queries to answer business questions.

## Business Questions & SQL Analysis
1. Find the top 10 products with the highest discount percentages.
2. Identify high-MRP products that are out of stock (MRP > ₹300).
3. Estimate revenue for each category using selling price × available quantity.
4. Find products with MRP > ₹500 and discount < 10%.
5. Identify the top 5 categories by average discount percentage.
6. Calculate price per gram for products weighing at least 100 g and rank by value.
7. Group products into Low, Medium, and Bulk weight categories.
8. Calculate total inventory weight per category.


## Key Skills Demonstrated
- SQL data exploration and validation
- Data cleaning and transformation
- Aggregation and grouping
- Conditional logic using `CASE`
- Business KPI and inventory analysis
- Translating business questions into SQL queries

## 👩‍💻 Author

**Prince**

Data Analyst | Fresher

Skills:SQL
