CREATE DATABASE Newyork_Commision_Data

USE Newyork_Commision_Data
SELECT * FROM Trip_Data

SELECT TOP 10 * 
FROM Trip_Data;
-- Retrieve the first 10 rows from the table

-- Retrieve column names, data types, and null counts from the table
SELECT COLUMN_NAME, DATA_TYPE, SUM(CASE WHEN COLUMN_NAME IS NULL THEN 1 ELSE 0 END) AS Null_Count
FROM INFORMATION_SCHEMA.COLUMNS
LEFT JOIN Trip_Data ON 1=1
GROUP BY COLUMN_NAME, DATA_TYPE
ORDER BY COLUMN_NAME;


-- Retrieve summary statistics for numerical columns (mean, std, min, max, etc.)
SELECT 
    AVG(fare_amount) AS avg_fare_amount,
    AVG(extra) AS avg_extra,
    AVG(mta_tax) AS avg_mta_tax,
    AVG(tip_amount) AS avg_tip_amount,
    AVG(tolls_amount) AS avg_tolls_amount,
    AVG(improvement_surcharge) AS avg_improvement_surcharge,
    AVG(total_amount) AS avg_total_amount,
    STDEV(fare_amount) AS std_fare_amount,
    STDEV(extra) AS std_extra,
    STDEV(mta_tax) AS std_mta_tax,
    STDEV(tip_amount) AS std_tip_amount,
    STDEV(tolls_amount) AS std_tolls_amount,
    STDEV(improvement_surcharge) AS std_improvement_surcharge,
    STDEV(total_amount) AS std_total_amount,
    MIN(fare_amount) AS min_fare_amount,
    MIN(extra) AS min_extra,
    MIN(mta_tax) AS min_mta_tax,
    MIN(tip_amount) AS min_tip_amount,
    MIN(tolls_amount) AS min_tolls_amount,
    MIN(improvement_surcharge) AS min_improvement_surcharge,
    MIN(total_amount) AS min_total_amount,
    MAX(fare_amount) AS max_fare_amount,
    MAX(extra) AS max_extra,
    MAX(mta_tax) AS max_mta_tax,
    MAX(tip_amount) AS max_tip_amount,
    MAX(tolls_amount) AS max_tolls_amount,
    MAX(improvement_surcharge) AS max_improvement_surcharge,
    MAX(total_amount) AS max_total_amount
FROM Trip_Data;


-- Sort the data by 'trip_distance' in descending order and retrieve the top 10 rows
SELECT TOP 10 *
FROM Trip_Data
ORDER BY trip_distance DESC;


-- Sort the 'total_amount' column in descending order and retrieve the top 20 values
SELECT TOP 20 total_amount
FROM Trip_Data
ORDER BY total_amount DESC;


-- Sort the 'total_amount' column in descending order and retrieve the last 20 values
SELECT total_amount
FROM Trip_Data
ORDER BY total_amount ASC


-- Count the occurrences of each unique value in the 'payment_type' column
SELECT payment_type, COUNT(*) AS count
FROM Trip_Data
GROUP BY payment_type
ORDER BY count DESC;


-- Calculate the average tip amount for 'payment_type' 1 (Credit Card)
SELECT AVG(tip_amount) AS avg_cc_tip
FROM Trip_Data
WHERE payment_type = 1;

-- Calculate the average tip amount for 'payment_type' 2 (Cash)
SELECT AVG(tip_amount) AS avg_cash_tip
FROM Trip_Data
WHERE payment_type = 2;

-- Count the occurrences of each unique value in the 'VendorID' column
SELECT VendorID, COUNT(*) AS count
FROM Trip_Data
GROUP BY VendorID
ORDER BY count DESC;


-- Calculate the average 'total_amount' for each 'VendorID'
SELECT VendorID, AVG(total_amount) AS avg_total_amount
FROM Trip_Data
GROUP BY VendorID;



-- Count the occurrences of each unique 'passenger_count' for 'payment_type' 1 (Credit Card)
SELECT passenger_count, COUNT(*) AS count
FROM Trip_Data
WHERE payment_type = 1
GROUP BY passenger_count
ORDER BY count DESC;


-- Calculate the average 'tip_amount' for each 'passenger_count' for 'payment_type' 1 (Credit Card)
SELECT passenger_count, AVG(tip_amount) AS avg_tip_amount
FROM Trip_Data
WHERE payment_type = 1
GROUP BY passenger_count;


--After looking at the dataset, the two variables that are most likely to help build a predictive model for taxi ride fares are total_amount and 
--trip_distance because those variables show a picture of a taxi cab ride.











