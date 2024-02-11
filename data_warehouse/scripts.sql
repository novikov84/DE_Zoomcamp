CREATE OR REPLACE TABLE sound-oasis-309708.green_dataset.green_trip_data AS
SELECT * FROM sound-oasis-309708.green_dataset.Green_Taxi_Trip_Records_2022;

SELECT COUNT(DISTINCT PULocationID) AS distinct_pulocation_ids
FROM sound-oasis-309708.green_dataset.Green_Taxi_Trip_Records_2022;

SELECT COUNT(DISTINCT PULocationID) AS distinct_pulocation_ids
FROM sound-oasis-309708.green_dataset.green_trip_data;

SELECT COUNT(*) AS number_of_records
FROM sound-oasis-309708.green_dataset.green_trip_data
WHERE fare_amount = 0;

CREATE OR REPLACE TABLE sound-oasis-309708.green_dataset.green_trip_data_partitioned_clustered_2 
PARTITION BY DATE(lpep_pickup_datetime)
CLUSTER BY PUlocationID AS
SELECT * FROM sound-oasis-309708.green_dataset.Green_Taxi_Trip_Records_2022;

--12.82 MB
SELECT DISTINCT PULocationID
FROM sound-oasis-309708.green_dataset.green_trip_data
WHERE lpep_pickup_datetime BETWEEN '2022-06-01' AND '2022-06-30';

--1.12 MB
SELECT DISTINCT PULocationID
FROM sound-oasis-309708.green_dataset.green_trip_data_partitioned_clustered_2
WHERE lpep_pickup_datetime BETWEEN '2022-06-01' AND '2022-06-30';
