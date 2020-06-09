/*Query the average population of all cities in CITY where District is California. */

SELECT 
(SUM(POPULATION)/COUNT(POPULATION))
FROM CITY
WHERE DISTRICT='California';
