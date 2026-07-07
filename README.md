# Elevate Labs Data Analyst Internship - Task 6

## Objective
Analyze monthly revenue and order volume using SQL aggregations to understand time trends in the `online_sales` dataset.

## Tools Used
* PostgreSQL / MySQL 

## Query Explanation
* Used `EXTRACT()` to get the year and month from `order_date`.
* Grouped the dataset by year and month using `GROUP BY`.
* Calculated the total revenue using `SUM(amount)`.
* Calculated the total order volume using `COUNT(DISTINCT order_id)`.
* Sorted the results chronologically using `ORDER BY`.

## Deliverables
* `task_6_sales_analysis.sql`: Contains the query to aggregate the data.

# Sales Trend Analysis Using Aggregations
* Completed monthly revenue and order volume analysis using SQL aggregations. 

Validated and ran successfully on db<>fiddle.
