------------------ queries------------
Q1. FIND THE TOP 10 BEST -VALUE PRODUCTS BASED ON THE DISCOUNT PERCENTAGE.

SELECT DISTINCT NAME,MRP,DISCOUNTPERCENT
FROM ZEPTO
ORDER BY DISCOUNTPERCENT DESC 
LIMIT 10;

Q2. WHAT ARE THE PRODUCTS WITH HIGH MRP BUT OUT OF STOCK.
SELECT DISTINCT name , mrp 
from zepto
where outofstock= true and mrp >300
order by mrp desc ;

Q3. CALCULATE ESTIMATED REVENUE FOR EACH CATEGORY.

select category,
sum(discountedSellingPrice * availableQuantity) AS total_revenue
from zepto
group by category
order by total_revenue;

Q4. FIND ALL PRODUCTS WHERE MRP IS GREATER THAN RUPEES 500 and DISCOUNT IS LESS THAN 10%.

select name,mrp, discountpercent
from zepto
where mrp >500 and discountpercent < 10
order by mrp desc, discountpercent desc ;

Q5. IDENTIFY THE TOP 5 CATEGORIES OFFERING THE HIGHEST AVERAGE DISCOUNT PERCENTAGE .

select category ,
round (AVG(discountpercent),2) as  avg_discount
from zepto
group by category 
order by avg_discount DESC
limit 5;
Q6. FIND THE PRICE PER GRAM FOR PRODUCTS ABOVE 100g and SORT BY BEST VALUE .

select distinct name,weightIngms,discountedSellingPrice ,
round(discountedSellingPrice/weightINgms,2) as price_per_gram
from zepto
where weightINgms >= 100
order by price_per_gram ;

Q7  GROUP THE PROJECTS INTO CATEGORIES LIKE LOW, MEDIUM, BULK.

select distinct name , weightINgms ,
case when weightINgms < 1000 then 'Low'
     when weightINgms < 5000 then 'Medium'
	 else 'Bulk'
     end as weight_category 
     from zepto;

Q8. WHAT IS THE TOTAL INVENTORY WEIGHT PER CATEGORY .

select category , 
sum (weightIngms * availableQuantity ) as total_weight
from zepto 
group by category
order by total_weight ;
