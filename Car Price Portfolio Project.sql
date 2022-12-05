------------------------------------------------------------------------------------------------------
------------------------------------------- DATA PROFILING -------------------------------------------
------------------------------------------------------------------------------------------------------
-- Checking All The Data From The Table
SELECT *
FROM CarPricePortfolioProject..CarPrice

-- Counting How Many Rows in The Table
SELECT COUNT(*) AS Row_Num
FROM CarPricePortfolioProject..CarPrice

-- Showing The Data Type For Every Column
SELECT COLUMN_NAME, DATA_TYPE
FROM CarPricePortfolioProject.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'CarPrice'

------------------------------------------------------------------------------------------------------
------------------------------------------- DATA CLEANSING -------------------------------------------
------------------------------------------------------------------------------------------------------
-- Make/Brand Column
~~~~~~~~~~~~~~~~~~~~
SELECT Make
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE Make is null

------------------------------------------------------------------------------------------------------
-- Model Column
~~~~~~~~~~~~~~~~~~~~
SELECT Model
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE Model is null

------------------------------------------------------------------------------------------------------
-- Year Column
~~~~~~~~~~~~~~~~~~~~
SELECT Year
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE Year is null

------------------------------------------------------------------------------------------------------
-- Engine Fuel Type Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SELECT [Engine Fuel Type]
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE [Engine Fuel Type] is null

SELECT [Engine Fuel Type]
FROM CarPricePortfolioProject..CarPrice
GROUP BY [Engine Fuel Type]

SELECT [Engine Fuel Type],
CASE WHEN [Engine Fuel Type] is null
		  AND Make like 'Suzuki'
		  AND Model like 'Verona'
		  AND Year like 2004 THEN 'regular unleaded'
ELSE [Engine Fuel Type]
END
FROM CarPricePortfolioProject..CarPrice
WHERE [Engine Fuel Type] is null

UPDATE CarPricePortfolioProject..CarPrice
SET [Engine Fuel Type] = CASE WHEN [Engine Fuel Type] is null
		  AND Make like 'Suzuki'
		  AND Model like 'Verona'
		  AND Year like 2004 THEN 'regular unleaded'
ELSE [Engine Fuel Type]
END

------------------------------------------------------------------------------------------------------
-- Engine HP Column
~~~~~~~~~~~~~~~~~~~~

SELECT [Engine HP]
FROM CarPricePortfolioProject..CarPrice

SELECT Make, Model
FROM CarPricePortfolioProject..CarPrice
WHERE [Engine HP] is null
GROUP BY Make, Model
ORDER BY Make

SELECT [Engine HP]
, CASE WHEN [Engine HP] is null
			AND Make like '%Chevrolet%'
			AND Model like '%Impala%' THEN 305
	   WHEN [Engine HP] is null
			AND Make like '%FIAT%'
			AND Model like '%500e%' THEN 111
	   WHEN [Engine HP] is null
			AND Make like '%ford%'
			AND Model like '%escape%' THEN 179
	   WHEN [Engine HP] is null
			AND Make like '%ford%'
			AND Model like '%focus%' THEN 160
	   WHEN [Engine HP] is null
			AND Make like '%ford%'
			AND Model like '%freestar%' THEN 201
	   WHEN [Engine HP] is null
			AND Make like '%honda%'
			AND Model like '%fit ev%' THEN 123
	   WHEN [Engine HP] is null
			AND Make like '%kia%'
			AND Model like '%soul ev%' THEN 109
	   WHEN [Engine HP] is null
			AND Make like '%lincoln%'
			AND Model like '%mkz%' THEN 245
	   WHEN [Engine HP] is null
			AND Make like '%lincoln%'
			AND Model like '%continental%' THEN 305
	   WHEN [Engine HP] is null
			AND Make like '%mercedes-benz%'
			AND Model like '%m-class%' THEN 200
	   WHEN [Engine HP] is null
			AND Make like '%mitsubishi%'
			AND Model like '%i-miev%' THEN 66
	   WHEN [Engine HP] is null
			AND Make like '%nissan%'
			AND Model like '%leaf%' THEN 150
	   WHEN [Engine HP] is null
			AND Make like '%tesla%'
			AND Model like '%model s%' THEN 1020
	   WHEN [Engine HP] is null
			AND Make like '%toyota%'
			AND Model like '%rav4 ev%' THEN 154
	   ELSE [Engine HP]
	   END
FROM CarPricePortfolioProject..CarPrice
WHERE [Engine HP] is null

UPDATE CarPricePortfolioProject..CarPrice
SET [Engine HP] = CASE WHEN [Engine HP] is null
							AND Make like '%Chevrolet%'
							AND Model like '%Impala%' THEN 305
					   WHEN [Engine HP] is null
							AND Make like '%FIAT%'
							AND Model like '%500e%' THEN 111
					   WHEN [Engine HP] is null
							AND Make like '%ford%'
							AND Model like '%escape%' THEN 179
					   WHEN [Engine HP] is null
							AND Make like '%ford%'
							AND Model like '%focus%' THEN 160
					   WHEN [Engine HP] is null
							AND Make like '%ford%'
							AND Model like '%freestar%' THEN 201
					   WHEN [Engine HP] is null
							AND Make like '%honda%'
							AND Model like '%fit ev%' THEN 123
					   WHEN [Engine HP] is null
							AND Make like '%kia%'
							AND Model like '%soul ev%' THEN 109
					   WHEN [Engine HP] is null
							AND Make like '%lincoln%'
							AND Model like '%mkz%' THEN 245
					   WHEN [Engine HP] is null
							AND Make like '%lincoln%'
							AND Model like '%continental%' THEN 305
					   WHEN [Engine HP] is null
							AND Make like '%mercedes-benz%'
							AND Model like '%m-class%' THEN 200
					   WHEN [Engine HP] is null
							AND Make like '%mitsubishi%'
							AND Model like '%i-miev%' THEN 66
					   WHEN [Engine HP] is null
							AND Make like '%nissan%'
							AND Model like '%leaf%' THEN 150
					   WHEN [Engine HP] is null
							AND Make like '%tesla%'
							AND Model like '%model s%' THEN 1020
					   WHEN [Engine HP] is null
							AND Make like '%toyota%'
							AND Model like '%rav4 ev%' THEN 154
					   ELSE [Engine HP]
					   END

------------------------------------------------------------------------------------------------------
-- Engine Cylinders Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~
SELECT [Engine Cylinders]
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE [Engine Cylinders] is null

SELECT Make, Model, [Engine Cylinders]
FROM CarPricePortfolioProject..CarPrice
WHERE [Engine Cylinders] is null
GROUP BY Make, Model, [Engine Cylinders]
ORDER BY Make, Model

SELECT [Engine Cylinders]
, CASE WHEN [Engine Cylinders] is null
			AND Make like '%mazda%'
			AND Model like '%rx-7%' THEN 2
	   WHEN [Engine Cylinders] is null
			AND Make like '%mazda%'
			AND Model like '%rx-8%' THEN 2
	   WHEN [Engine Cylinders] is null THEN 0
	   ELSE [Engine Cylinders]
	   END
FROM CarPricePortfolioProject..CarPrice
WHERE [Engine Cylinders] is null

UPDATE CarPricePortfolioProject..CarPrice
SET [Engine Cylinders] = CASE WHEN [Engine Cylinders] is null
			AND Make like '%mazda%'
			AND Model like '%rx-7%' THEN 2
	   WHEN [Engine Cylinders] is null
			AND Make like '%mazda%'
			AND Model like '%rx-8%' THEN 2
	   WHEN [Engine Cylinders] is null THEN 0
	   ELSE [Engine Cylinders]
	   END

------------------------------------------------------------------------------------------------------
-- Transmission Type Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SELECT [Transmission Type]
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE [Transmission Type] is null

------------------------------------------------------------------------------------------------------
-- Driven Wheels Column
~~~~~~~~~~~~~~~~~~~~~~~~
SELECT Driven_Wheels
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE Driven_Wheels is null

------------------------------------------------------------------------------------------------------
-- Number of Doors Column
~~~~~~~~~~~~~~~~~~~~~~~~~~
SELECT [Number of Doors]
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE [Number of Doors] is null

SELECT Make, Model
FROM CarPricePortfolioProject..CarPrice
WHERE [Number of Doors] is null
GROUP BY Make, Model
ORDER BY Make, Model

SELECT [Number of Doors]
, CASE WHEN [Number of Doors] is null
			AND Make like '%ferrari%'
			AND Model like '%ff%' THEN 2
	   WHEN [Number of Doors] is null
			AND Make like '%tesla%'
			AND Model like '%model s%' THEN 4
	   ELSE [Number of Doors]
	   END
FROM CarPricePortfolioProject..CarPrice
WHERE [Number of Doors] is null

UPDATE CarPricePortfolioProject..CarPrice
SET [Number of Doors] = CASE WHEN [Number of Doors] is null
									AND Make like '%ferrari%'
									AND Model like '%ff%' THEN 2
							   WHEN [Number of Doors] is null
									AND Make like '%tesla%'
									AND Model like '%model s%' THEN 4
							   ELSE [Number of Doors]
							   END

------------------------------------------------------------------------------------------------------
-- Market Category Column
~~~~~~~~~~~~~~~~~~~~~~~~~~
SELECT [Market Category]
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE [Market Category] is null

------------------------------------------------------------------------------------------------------
-- Vehicle Size Column
~~~~~~~~~~~~~~~~~~~~~~~
SELECT [Vehicle Size]
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE [Vehicle Size] is null

------------------------------------------------------------------------------------------------------
-- Vehicle Style Column
~~~~~~~~~~~~~~~~~~~~~~~~~
SELECT [Vehicle Style]
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE [Vehicle Style] is null

------------------------------------------------------------------------------------------------------
-- Highway MPG Column
~~~~~~~~~~~~~~~~~~~~~~
SELECT [highway MPG]
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE [highway MPG] is null

SELECT [highway MPG]
, ROUND(([highway MPG]*0.425144),2) AS highway_kpl
FROM CarPricePortfolioProject..CarPrice

ALTER TABLE CarPricePortfolioProject..CarPrice
ADD highway_kpl float

UPDATE CarPricePortfolioProject..CarPrice
SET highway_kpl = ROUND(([highway MPG]*0.425144),2)

ALTER TABLE CarPricePortfolioProject..CarPrice
DROP COLUMN [highway MPG]

------------------------------------------------------------------------------------------------------
-- City MPG Column
~~~~~~~~~~~~~~~~~~~~
SELECT [city mpg]
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE [city mpg] is null

SELECT [city mpg]
, ROUND(([city mpg]*0.425144),2) AS city_kpl
FROM CarPricePortfolioProject..CarPrice

ALTER TABLE CarPricePortfolioProject..CarPrice
ADD city_kpl float

UPDATE CarPricePortfolioProject..CarPrice
SET city_kpl = ROUND(([city mpg]*0.425144),2)

ALTER TABLE CarPricePortfolioProject..CarPrice
DROP COLUMN [city mpg]

------------------------------------------------------------------------------------------------------
-- Popularity Column
~~~~~~~~~~~~~~~~~~~~~
SELECT Popularity
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE Popularity is null

SELECT Popularity
FROM CarPricePortfolioProject..CarPrice
GROUP BY Popularity

ALTER TABLE CarPricePortfolioProject..CarPrice
DROP COLUMN popularity

------------------------------------------------------------------------------------------------------
-- MSRP/Price Column
~~~~~~~~~~~~~~~~~~~~~
SELECT MSRP
FROM CarPricePortfolioProject..CarPrice

SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE MSRP is null

ALTER TABLE CarPricePortfolioProject..CarPrice
ADD price float

UPDATE CarPricePortfolioProject..CarPrice
SET price = MSRP

ALTER TABLE CarPricePortfolioProject..CarPrice
DROP COLUMN MSRP

------------------------------------------------------------------------------------------------------
------------------------------------------ DATA EXPLORATION ------------------------------------------
------------------------------------------------------------------------------------------------------
SELECT *
FROM CarPricePortfolioProject..CarPrice

------------------------------------------------------------------------------------------------------
-- Checking The Number of Brand
SELECT Make, COUNT(Make) AS Amount
FROM CarPricePortfolioProject..CarPrice
GROUP BY Make
ORDER BY Amount DESC

------------------------------------------------------------------------------------------------------
-- Checking The Number of Brand And Model
SELECT Make, Model, COUNT(Model) AS Amount
FROM CarPricePortfolioProject..CarPrice
GROUP BY Make, Model
ORDER BY Amount DESC

------------------------------------------------------------------------------------------------------
-- Checking The Number of Year
SELECT Year, COUNT(Year) AS Amount
FROM CarPricePortfolioProject..CarPrice
GROUP BY Year
ORDER BY Amount DESC

------------------------------------------------------------------------------------------------------
-- Checking The Oldest Car
SELECT Year
FROM CarPricePortfolioProject..CarPrice
GROUP BY Year
ORDER BY Year

------------------------------------------------------------------------------------------------------
-- Checking The Newest Car
SELECT Year
FROM CarPricePortfolioProject..CarPrice
GROUP BY Year
ORDER BY Year DESC

------------------------------------------------------------------------------------------------------
-- Checking The Number of Engine Fuel Type
SELECT [Engine Fuel Type], COUNT([Engine Fuel Type]) AS Amount
FROM CarPricePortfolioProject..CarPrice
GROUP BY [Engine Fuel Type]
ORDER BY Amount DESC

------------------------------------------------------------------------------------------------------
-- Checking The Number of Transmission Type
SELECT [Transmission Type], COUNT([Transmission Type]) AS Amount
FROM CarPricePortfolioProject..CarPrice
GROUP BY [Transmission Type]
ORDER BY Amount DESC

-- Changing The UNKNOWN Value
SELECT *
FROM CarPricePortfolioProject..CarPrice
WHERE [Transmission Type] like '%unknown%'

SELECT Make, Model, Year
FROM CarPricePortfolioProject..CarPrice
WHERE [Transmission Type] like '%unknown%'
GROUP BY Make, Model, Year

SELECT [Transmission Type]
, CASE WHEN [Transmission Type] like '%unknown%'
			AND Make like '%pontiac%'
			AND Model like '%firebird%' THEN 'MANUAL'
	   WHEN [Transmission Type] like '%unknown%'
			AND Make like '%chrysler%'
			AND Model like '%le baron%' THEN 'MANUAL'
	   WHEN [Transmission Type] like '%unknown%'
			AND Make like '%dodge%'
			AND Model like '%ram 150%' THEN 'MANUAL'
	   WHEN [Transmission Type] like '%unknown%'
			AND Make like '%gmc%'
			AND Model like '%jimmy%' 
			AND Year = 1999 THEN 'MANUAL'
	   WHEN [Transmission Type] like '%unknown%'
			AND Make like '%gmc%'
			AND Model like '%jimmy%' 
			AND Year = 2000 THEN 'AUTOMATIC'
	   WHEN [Transmission Type] like '%unknown%'
			AND Make like '%oldsmobile%'
			AND Model like '%achieva%' THEN 'MANUAL'
	   ELSE [Transmission Type]
	   END
FROM CarPricePortfolioProject..CarPrice
WHERE [Transmission Type] like 'UNKNOWN'

UPDATE CarPricePortfolioProject..CarPrice
SET [Transmission Type] = CASE WHEN [Transmission Type] like '%unknown%'
									AND Make like '%pontiac%'
									AND Model like '%firebird%' THEN 'MANUAL'
							   WHEN [Transmission Type] like '%unknown%'
									AND Make like '%chrysler%'
									AND Model like '%le baron%' THEN 'MANUAL'
							   WHEN [Transmission Type] like '%unknown%'
									AND Make like '%dodge%'
									AND Model like '%ram 150%' THEN 'MANUAL'
							   WHEN [Transmission Type] like '%unknown%'
									AND Make like '%gmc%'
									AND Model like '%jimmy%' 
									AND Year = 1999 THEN 'MANUAL'
							   WHEN [Transmission Type] like '%unknown%'
									AND Make like '%gmc%'
									AND Model like '%jimmy%' 
									AND Year = 2000 THEN 'AUTOMATIC'
							   WHEN [Transmission Type] like '%unknown%'
									AND Make like '%oldsmobile%'
									AND Model like '%achieva%' THEN 'MANUAL'
							   ELSE [Transmission Type]
							   END

------------------------------------------------------------------------------------------------------
-- Checking The Number of Driven Wheels
SELECT Driven_Wheels, COUNT(Driven_Wheels) AS Amount
FROM CarPricePortfolioProject..CarPrice
GROUP BY Driven_Wheels
ORDER BY Amount DESC

------------------------------------------------------------------------------------------------------
-- Checking The Number of Doors
SELECT [Number of Doors], COUNT([Number of Doors]) AS Amount
FROM CarPricePortfolioProject..CarPrice
GROUP BY [Number of Doors]
ORDER BY Amount DESC

------------------------------------------------------------------------------------------------------
-- Checking The Number of Vehicle Size
SELECT [Vehicle Size], COUNT([Vehicle Size]) AS Amount
FROM CarPricePortfolioProject..CarPrice
GROUP BY [Vehicle Size]
ORDER BY Amount DESC

------------------------------------------------------------------------------------------------------
-- Checking The Number of Vehicle Style
SELECT [Vehicle Style], COUNT([Vehicle Style]) AS Amount
FROM CarPricePortfolioProject..CarPrice
GROUP BY [Vehicle Style]
ORDER BY Amount DESC

------------------------------------------------------------------------------------------------------
-- Checking The Lowest Price
SELECT *
FROM CarPricePortfolioProject..CarPrice
ORDER BY price

------------------------------------------------------------------------------------------------------
-- Checking The Lowest Average Price Based on The Brand And Model
SELECT Make, Model, AVG(price) AS Average_Price
FROM CarPricePortfolioProject..CarPrice
GROUP BY Make, Model
ORDER BY Average_Price

------------------------------------------------------------------------------------------------------
-- Checking The Highest Price
SELECT *
FROM CarPricePortfolioProject..CarPrice
ORDER BY price DESC

------------------------------------------------------------------------------------------------------
-- Checking The Highest Average Price Based on The Brand And Model
SELECT Make, Model, AVG(price) AS Average_Price
FROM CarPricePortfolioProject..CarPrice
GROUP BY Make, Model
ORDER BY Average_Price DESC

------------------------------------------------------------------------------------------------------
-- Checking Which Cars Are The Most Wasteful When It Comes To Fuel Consumption in Highway
SELECT Make, Model, AVG(highway_kpl) AS Average_Highway_KPL
FROM CarPricePortfolioProject..CarPrice
GROUP BY Make, Model, highway_kpl
ORDER BY highway_kpl

------------------------------------------------------------------------------------------------------
-- Checking Which Cars Are The Least Wasteful When It Comes To Fuel Consumption in Highway
SELECT Make, Model, AVG(highway_kpl) AS Average_Highway_KPL
FROM CarPricePortfolioProject..CarPrice
GROUP BY Make, Model, highway_kpl
ORDER BY highway_kpl DESC

------------------------------------------------------------------------------------------------------
-- Checking Which Cars Are The Most Wasteful When It Comes To Fuel Consumption in City
SELECT Make, Model, AVG(city_kpl) AS Average_Highway_KPL
FROM CarPricePortfolioProject..CarPrice
GROUP BY Make, Model, city_kpl
ORDER BY city_kpl

------------------------------------------------------------------------------------------------------
-- Checking Which Cars Are The Least Wasteful When It Comes To Fuel Consumption in City
SELECT Make, Model, AVG(city_kpl) AS Average_Highway_KPL
FROM CarPricePortfolioProject..CarPrice
GROUP BY Make, Model, city_kpl
ORDER BY city_kpl DESC
