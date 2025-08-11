/*===========================================================
  Plato's Pizza: Business Optimization
  Data Quality Checks & Preparation
  Run date: 7/21/2025
===========================================================*/

-- View all table
SELECT *
FROM orders;

SELECT *
FROM order_details;

SELECT *
FROM pizzas;

SELECT *
FROM pizza_types;

SELECT *
FROM pizza_ingredients;

-- Check for inconsistent entries
SELECT DISTINCT pizza_id
FROM order_details
ORDER BY pizza_id;

/*
Identify duplicate order_id values in the orders table
*/
SELECT order_id, 
	   COUNT(*) AS Duplicates
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1

/*
Identify duplicate order_details_id values in the order_details table
*/
SELECT order_details_id, 
	   COUNT(*) AS Duplicates
FROM order_details
GROUP BY order_details_id
HAVING COUNT(*) > 1

/* Calculates the total quantity of pizzas sold by size. 
Large pizzas were the most popular (for future use) */
SELECT
    SUM(CASE WHEN pizza_id LIKE '%_s' THEN quantity END) AS small,
    SUM(CASE WHEN pizza_id LIKE '%_m' THEN quantity END) AS medium,
    SUM(CASE WHEN pizza_id LIKE '%_l' THEN quantity END) AS large,
    SUM(CASE WHEN pizza_id LIKE '%_xl' THEN quantity END) AS x_large,
    SUM(CASE WHEN pizza_id LIKE '%_xxl' THEN quantity END) AS xx_large
FROM order_details

-- Create pizza_ingredients table (for future use)
CREATE TABLE pizza_ingredients (
    pizza_type_id VARCHAR(50),
    ingredient VARCHAR(100)
);

INSERT INTO pizza_ingredients (pizza_type_id, ingredient)
SELECT 
    pt.pizza_type_id,
    LTRIM(RTRIM(value)) AS ingredient -- Clean up extra space
FROM pizza_types pt
CROSS APPLY STRING_SPLIT(pt.ingredients, ','); -- roduces one row per ingredient