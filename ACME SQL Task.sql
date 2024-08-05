USE acmesoftwarelab

Data Retrieval

SELECT brand_name, model, price
FROM smartphones

SELECT brand_name, rating, has_5g, ram_capacity
FROM smartphones

SELECT model, battery_capacity, resolution, os
FROM smartphones

Data Manipulation

SELECT brand_name, model, fast_charging
FROM smartphones
WHERE price > 50000

SELECT brand_name, rating, has_nfc, ram_capacity, primary_camera_front
FROM smartphones
WHERE battery_capacity < 3500
ORDER BY brand_name

SELECT brand_name, 
AVG(rating) AS average_rating, 
COUNT(*) AS number_of_phones
FROM smartphones
WHERE resolution > 1400
GROUP BY brand_name
HAVING AVG(rating) > 3.0
ORDER BY brand_name

Data Analysis

SELECT 
SUM(ram_capacity) AS total_ram_capacity
FROM smartphones

SELECT 
COUNT(*) AS nfc_smartphones
FROM smartphones
WHERE has_nfc = "No"

SELECT brand_name, 
MAX(rating) AS max_rating, 
MIN(rating) AS min_rating 
FROM smartphones 
GROUP BY brand_name 
HAVING MAX(rating) > 10 
ORDER BY brand_name 

SELECT brand_name,
SUM(ram_capacity) AS total_ram_capacity,
AVG(ram_capacity) AS average_ram_capacity
FROM smartphones
GROUP BY brand_name
HAVING SUM(ram_capacity) < 6000
ORDER BY total_ram_capacity DESC

SELECT brand_name, battery_capacity,
CASE
WHEN battery_capacity >= 5000 THEN "Long Battery Life"
WHEN battery_capacity >= 3500 THEN "Average Battery Life"
ELSE "Short Battery Life"
END AS battery_life_category
FROM smartphones
ORDER BY brand_name

SELECT brand_name, model, rating,
CASE
WHEN rating >= 80 THEN "Excellent"
WHEN rating >= 70 THEN "Good"
WHEN rating >= 60 THEN "Average"
ELSE "Poor"
END AS rating_category
FROM smartphones
ORDER by brand_name

