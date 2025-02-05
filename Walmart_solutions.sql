/*1.What is the total weekly sales across all weeks?*/
select sum(Weekly_Sales)
from walmart_sales;

/*2.What is the average weekly sales?*/
select round(avg(Weekly_Sales),2)
from walmart_sales;

/*3.What are the maximum and minimum weekly sales?*/
select max(Weekly_Sales) as max_sale,min(Weekly_Sales) as min_sale
from walmart_sales;

/*4.How do sales during holidays compare to sales during non-holidays?*/
select Holiday_flag, round(sum(weekly_sales),2)
from walmart_sales
group by holiday_flag;

/*5.What is the relationship between weekly sales and fuel price?*/
SELECT 
    CASE 
        WHEN Fuel_Price > 4 THEN 'Above 4'
        WHEN Fuel_Price BETWEEN 3 AND 4 THEN 'Between 3 and 4'
        WHEN Fuel_Price < 3 then 'Below 3'
        ELSE 'Random'
    END AS Fuel_Price_Range,
    ROUND(AVG(Weekly_Sales),2) AS average_sales
FROM walmart_sales
GROUP BY Fuel_Price_Range
ORDER BY Fuel_Price_Range;

/*6.How does the Consumer Price Index (CPI) affect weekly sales?*/
select 
case
when CPI between 100 and 150 then 'CPI between 100 and 150'
when CPI between 151 and 200 then 'CPI between 151 and 200'
when CPI between 201 and 250 then 'CPI between 201 and 250'
else 'Random'
end as CPI_RANGE,
round(avg(weekly_sales),2) as Weekly_sales
from walmart_sales
group by CPI_Range;

/*7.How does the unemployment rate influence weekly sales?*/
select 
case 
when unemployment between 5 and 6 then 'Between 5 and 6'
when unemployment between 6 and 7 then 'Between 6 and 7'
when unemployment between 7 and 8 then 'Between 7 and 8'
else 'Greater than 8'
END as Unemployment_rate,
round(avg(weekly_sales),2) avg_sales
from walmart_sales
group by unemployment_rate;

/*8.How do weekly sales vary with temperature?*/
select weather_condition,round(avg(weekly_sales),2) as avg_sales
from walmart_sales
group by weather_condition;

/*Maximum weather Sales*/
select weather_condition, round(max(weekly_sales),0) as max_sales
from walmart_sales
group by weather_condition
order by max_sales desc
limit 1;

/*Minumum weather sales*/
select weather_condition, round(min(weekly_sales),0) as max_sales
from walmart_sales
group by weather_condition
order by max_sales desc
limit 1;

/*9.What are the sales in different temperature ranges (e.g., below 50, between 50-75, above 75)?*/
select 
case
when temperature < 50 then 'Temp. below 50'
when temperature between 50 and 75 then 'Between 50 and 75'
when temperature > 75 then 'Above 75'
end as Temp_range,
round(avg(weekly_sales),2)
from walmart_sales
group by Temp_range;

/*10.How do sales during holidays correlate with higher or lower sales during the year?*/
select holiday_flag,round(avg(weekly_sales),1) as avg_sales
from walmart_sales
group by holiday_flag;

/*11.Which store makes the most profit?*/
select store, round(avg(weekly_sales),1) as avg_sales
 from walmart_sales
 group by store
 order by avg_sales desc;

/*12.How does fuel price affect weekly sales trends?*/
select 
case
	when fuel_price > 2 and fuel_price < 3 then 'between 2 and 3'
    when fuel_price > 3 and fuel_price < 4 then 'Between 3 and 4'
    else 'Greater than 4'
    end as fuel_range,
	round(avg(weekly_sales),1) as avg_sales
    from walmart_sales
    group by fuel_range
    order by avg_sales desc;
    
/*13.What are the sales for weeks where the temperature was above a certain threshold?*/
SELECT round(SUM(Weekly_Sales),1) AS total_sales
FROM walmart_sales
WHERE Temperature > 75;

/*15.Which weeks had the lowest sales but the highest unemployment rate?*/
select weekly_sales as avg_sales, unemployment
from walmart_sales 
where holiday_flag = 1
order by avg_sales asc, unemployment desc;
    
    
























