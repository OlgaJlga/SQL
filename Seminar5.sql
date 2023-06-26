DROP TABLE IF EXISTS cars;
CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);
INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
SELECT *
FROM cars;

CREATE VIEW cars
AS SELECT *
FROM AUTO
WHERE PRICE_IN_DOLLARS < 25000

ALTER VIEW InexpensivelyCars AS 
SELECT * FROM cars 
WHERE cost < 30000
ORDER BY cost;

CREATE VIEW skoda_and_audi
AS SELECT *
FROM AUTO
WHERE MARK='SKODA' OR MARK='AUDI';

SELECT
ROW_NUMBER() OVER(ORDER BY cost) `№ п/п`,
cost as `Цена`, name_marka as `Марка авто`
FROM cars; 
 
SELECT 
id, name_marka, cost,
LAG(cost) OVER w `lag`,
LEAD(cost) OVER w `lead`, 
FIRST_VALUE(cost) OVER w `first`, 
LAST_VALUE(cost) OVER w `last` 
FROM cars
WINDOW w AS (PARTITION BY cost); 