# Database Documentation

## Database Schema: acmesoftwarelab

### Table: smartphones
- **brand_name**: TEXT
- **model**: TEXT
- **price**: INTEGER
- **rating**: INTEGER
- **has_5g**: TEXT
- **has_nfc**: TEXT
- **has_ir_blaster**: TEXT
- **processor_name**: TEXT
- **processor_brand**: TEXT
- **num_cores**: TEXT
- **processor_speed**: DOUBLE
- **battery_capacity**: INTEGER
- **fast_charging**: INTEGER
- **ram_capacity**: INTEGER
- **internal_memory**: INTEGER
- **refresh_rate**: INTEGER
- **resolution**: TEXT
- **num_rear_cameras**: INTEGER
- **num_front_cameras**: INTEGER
- **os**: TEXT
- **primary_camera_rear**: INTEGER
- **primary_camera_front**: INTEGER
- **extended_memory**: TEXT

## Data Retrieval

To retrieve brand name, model and price from smartphones:
SELECT brand_name, model, price
FROM smartphones

To retrieve the brand name, rating, to know the phones with 5g and the ram capacity:
SELECT brand_name, rating, has_5g, ram_capacity
FROM smartphones

To retrieve the brand_name, model, battery capacity and resolution:
SELECT brand_name, model, battery_capacity, resolution, os
FROM smartphones

## Data Manipulation

To filter the smatphones with price above 50000:
SELECT brand_name, model, fast_charging
FROM smartphones
WHERE price > 50000

To know the phones with battery capacity less than 3500 and order the result in ascending order:
SELECT brand_name, rating, has_nfc, ram_capacity, primary_camera_front
FROM smartphones
WHERE battery_capacity < 3500
ORDER BY brand_name

Performing aggregate functions:
SELECT brand_name, 
AVG(rating) AS average_rating, 
COUNT(*) AS number_of_phones
FROM smartphones
WHERE resolution > 1400
GROUP BY brand_name
HAVING AVG(rating) > 3.0
ORDER BY brand_name

## Data Analysis
 
Total number of Smartphones:
SELECT
COUNT(*) AS total_smartphones
FROM smartphones

Total RAM Capacity:
SELECT 
SUM(ram_capacity) AS total_ram_capacity
FROM smartphones

Count of Smartphones with NFC:
SELECT 
COUNT(*) AS nfc_smartphones
FROM smartphones
WHERE has_nfc = "No"

Grouping by brand_name and Calculating Maximum and Minimum Ratings:
SELECT brand_name, 
MAX(rating) AS max_rating, 
MIN(rating) AS min_rating 
FROM smartphones 
GROUP BY brand_name 
HAVING MAX(rating) > 10 
ORDER BY brand_name 

Grouping by brand_name and Calculating Total and Average RAM Capacity:
SELECT brand_name,
SUM(ram_capacity) AS total_ram_capacity,
AVG(ram_capacity) AS average_ram_capacity
FROM smartphones
GROUP BY brand_name
HAVING SUM(ram_capacity) < 6000
ORDER BY total_ram_capacity DESC

## Conditional Logic

Categorizing Smartphones Based on Battery Capacity
Let's categorize smartphones into "Long Battery Life", "Average Battery Life", and "Short Battery Life" based on their battery capacity:

SELECT brand_name, battery_capacity,
CASE
WHEN battery_capacity >= 5000 THEN "Long Battery Life"
WHEN battery_capacity >= 3500 THEN "Average Battery Life"
ELSE "Short Battery Life"
END AS battery_life_category
FROM smartphones
ORDER BY brand_name

Categorizing Smartphones Based on Rating
Let's categorize smartphones into "Excellent", "Good", "Average", and "Poor" based on their rating:

SELECT brand_name, model, rating,
CASE
WHEN rating >= 80 THEN "Excellent"
WHEN rating >= 70 THEN "Good"
WHEN rating >= 60 THEN "Average"
ELSE "Poor"
END AS rating_category
FROM smartphones
ORDER by brand_name


