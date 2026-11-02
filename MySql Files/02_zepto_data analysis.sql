-- data analysis

use zepto_project;

-- Q1. Find the top 10 best-value products based on the discount percentage.
select distinct name,mrp,discountPercent
from zepto
order by discountPercent desc
limit 10;

-- Q2.What are the Products with High MRP but Out of Stock
select distinct name, mrp
from zepto
where outOfStock = 'TRUE' and mrp > 300
order by mrp desc;

-- Q3.Calculate Estimated Revenue for each category
select category,
sum(discountedSellingPrice*availableQuantity) as total_revenue
from zepto
group by category
order by total_revenue desc;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
select *
from zepto
where mrp>500 and discountPercent<10;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
select category,
round(avg(discountPercent),2) as average_discount
from zepto
group by category
order by average_discount desc
limit 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.
select name, weightInGms,discountedSellingPrice,
round((discountedSellingPrice/weightInGms),2) as price_per_gram
from zepto
where weightInGms>=100
order by price_per_gram;

-- Q7.Group the products into categories like Low, Medium, Bulk.

select distinct name, weightInGms,
case when weightInGms<1000 then 'Low'
when weightInGms<5000 then 'Medium'
else 'Bulk'
end as weight_category
from zepto;

-- Q8.What is the Total Inventory Weight Per Category

select category,
sum(availableQuantity*weightInGms) as total_weight
from zepto
group by category
order by total_weight;