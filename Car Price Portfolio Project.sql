SELECT *
FROM CarPricePortfolioProject..CarPrice

SELECT COUNT(*) AS Row_Num
FROM CarPricePortfolioProject..CarPrice

SELECT COLUMN_NAME, DATA_TYPE
FROM CarPricePortfolioProject.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'CarPrice'




SELECT Make
FROM CarPrice

SELECT *
FROM CarPrice
WHERE Make is null



SELECT Model
FROM CarPrice

SELECT *
FROM CarPrice
WHERE Model is null



SELECT Year
FROM CarPrice

SELECT *
FROM CarPrice
WHERE Year is null



SELECT [Engine Fuel Type]
FROM CarPrice

SELECT *
FROM CarPrice
WHERE [Engine Fuel Type] is null

SELECT [Engine Fuel Type]
FROM CarPrice
GROUP BY [Engine Fuel Type]

SELECT [Engine Fuel Type],
CASE WHEN [Engine Fuel Type] is null
		  AND Make like 'Suzuki'
		  AND Model like 'Verona'
		  AND Year like 2004 THEN 'regular unleaded'
ELSE [Engine Fuel Type]
END
FROM CarPrice
WHERE [Engine Fuel Type] is null

UPDATE CarPrice
SET [Engine Fuel Type] = CASE WHEN [Engine Fuel Type] is null
		  AND Make like 'Suzuki'
		  AND Model like 'Verona'
		  AND Year like 2004 THEN 'regular unleaded'
ELSE [Engine Fuel Type]
END



SELECT [Engine HP]
FROM CarPrice

SELECT Make, Model
FROM CarPrice
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
FROM CarPrice
WHERE [Engine HP] is null

UPDATE CarPrice
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




SELECT [Engine Cylinders]
FROM CarPrice

SELECT *
FROM CarPrice
WHERE [Engine Cylinders] is null

SELECT Make, Model, [Engine Cylinders]
FROM CarPrice
WHERE [Engine Cylinders] is null
GROUP BY Make, Model, [Engine Cylinders]
ORDER BY Make, Model

SELECT [Engine Cylinders],
CASE WHEN [Engine Cylinders] is null THEN 0
ELSE [Engine Cylinders]
END
FROM CarPrice
WHERE [Engine Cylinders] is null

UPDATE CarPrice
SET [Engine Cylinders] = CASE WHEN [Engine Cylinders] is null THEN 0
ELSE [Engine Cylinders]
END




SELECT [Transmission Type]
FROM CarPrice

SELECT *
FROM CarPrice
WHERE [Transmission Type] is null




SELECT Driven_Wheels
FROM CarPrice

SELECT *
FROM CarPrice
WHERE Driven_Wheels is null




SELECT [Number of Doors]
FROM CarPrice

SELECT *
FROM CarPrice
WHERE [Number of Doors] is null

SELECT Make, Model
FROM CarPrice
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
FROM CarPrice
WHERE [Number of Doors] is null

UPDATE CarPrice
SET [Number of Doors] = CASE WHEN [Number of Doors] is null
									AND Make like '%ferrari%'
									AND Model like '%ff%' THEN 2
							   WHEN [Number of Doors] is null
									AND Make like '%tesla%'
									AND Model like '%model s%' THEN 4
							   ELSE [Number of Doors]
							   END




SELECT [Market Category]
FROM CarPrice

SELECT *
FROM CarPrice
WHERE [Market Category] is null



SELECT [Vehicle Size]
FROM CarPrice

SELECT *
FROM CarPrice
WHERE [Vehicle Size] is null




SELECT [Vehicle Style]
FROM CarPrice

SELECT *
FROM CarPrice
WHERE [Vehicle Style] is null



SELECT [highway MPG]
FROM CarPrice

SELECT *
FROM CarPrice
WHERE [highway MPG] is null

SELECT [highway MPG]
, ROUND(([highway MPG]*0.425144),2) AS highway_kpl
FROM CarPrice

ALTER TABLE CarPrice
ADD highway_kpl float

UPDATE CarPrice
SET highway_kpl = ROUND(([highway MPG]*0.425144),2)

ALTER TABLE CarPrice
DROP COLUMN [highway MPG]



SELECT [city mpg]
FROM CarPrice

SELECT *
FROM CarPrice
WHERE [city mpg] is null

SELECT [city mpg]
, ROUND(([city mpg]*0.425144),2) AS city_kpl
FROM CarPrice

ALTER TABLE CarPrice
ADD city_kpl float

UPDATE CarPrice
SET city_kpl = ROUND(([city mpg]*0.425144),2)

ALTER TABLE CarPrice
DROP COLUMN [city mpg]



SELECT Popularity
FROM CarPrice

SELECT *
FROM CarPrice
WHERE Popularity is null

SELECT Popularity
FROM CarPrice
GROUP BY Popularity

ALTER TABLE CarPrice
DROP COLUMN popularity



SELECT MSRP
FROM CarPrice

SELECT *
FROM CarPrice
WHERE MSRP is null

ALTER TABLE CarPrice
ADD price float

UPDATE CarPrice
SET price = MSRP

ALTER TABLE CarPrice
DROP COLUMN MSRP







SELECT *
FROM CarPrice

SELECT Make, COUNT(Make) AS Amount
FROM CarPrice
GROUP BY Make
ORDER BY Make

SELECT Make, Model, COUNT(Model) AS Amount
FROM CarPrice
GROUP BY Make, Model
ORDER BY Make, Model

SELECT Year, COUNT(Year) AS Amount
FROM CarPrice
GROUP BY Year
ORDER BY Year

SELECT [Engine Fuel Type], COUNT([Engine Fuel Type]) AS Amount
FROM CarPrice
GROUP BY [Engine Fuel Type]
ORDER BY [Engine Fuel Type]

SELECT [Transmission Type], COUNT([Transmission Type]) AS Amount
FROM CarPrice
GROUP BY [Transmission Type]
ORDER BY [Transmission Type]

SELECT *
FROM CarPrice
WHERE [Transmission Type] like '%unknown%'

SELECT Make, Model, Year
FROM CarPrice
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
FROM CarPrice
WHERE [Transmission Type] like 'UNKNOWN'

UPDATE CarPrice
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



SELECT Driven_Wheels, COUNT(Driven_Wheels) AS Amount
FROM CarPrice
GROUP BY Driven_Wheels
ORDER BY Driven_Wheels

SELECT [Number of Doors], COUNT([Number of Doors]) AS Amount
FROM CarPrice
GROUP BY [Number of Doors]
ORDER BY [Number of Doors]

SELECT [Vehicle Size], COUNT([Vehicle Size]) AS Amount
FROM CarPrice
GROUP BY [Vehicle Size]
ORDER BY [Vehicle Size]

SELECT [Vehicle Style], COUNT([Vehicle Style]) AS Amount
FROM CarPrice
GROUP BY [Vehicle Style]
ORDER BY [Vehicle Style]

SELECT *
FROM CarPrice
ORDER BY price

SELECT *
FROM CarPrice
ORDER BY price DESC