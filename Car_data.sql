

-- Read Data
SELECT * FROM car_data;

-- Total Cars: To get the count of total records
SELECT COUNT(*) FROM car_data;

-- The manager asked the employee: How many cars will be available in 2023?
SELECT COUNT(*) FROM car_data WHERE year = 2023;

-- The manager asked the employee: How many cars will be available in 2022, 2021, and 2020?
SELECT COUNT(*) FROM car_data WHERE year IN (2020, 2021, 2022) GROUP BY year;

-- Client asked me to provide the total number of cars by year. I don't want to see all the details, just the year and count.
SELECT year, COUNT(*) FROM car_data GROUP BY year;

-- The client asked the car dealer agent: How many diesel cars will be there in 2020?
SELECT COUNT(*) FROM car_data WHERE year = 2020 AND fuel = 'Diesel';

-- Can you give me a breakdown of the number of cars by fuel type (CNG, Petrol, Diesel) for each year, sorted in ascending order of year?
SELECT year, COUNT(*), fuel 
FROM car_data 
WHERE fuel IN ('CNG', 'Petrol', 'Diesel') 
GROUP BY year, fuel 
ORDER BY year ASC;

-- Show years with a count of cars greater than 100.
SELECT year, COUNT(*) 
FROM car_data 
GROUP BY year 
HAVING COUNT(*) > 100;

-- The manager asked for all car details between 2015 and 2020.
SELECT * FROM car_data 
WHERE year BETWEEN 2015 AND 2020 
ORDER BY year DESC;
