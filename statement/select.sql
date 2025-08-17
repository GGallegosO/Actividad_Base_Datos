SELECT * FROM city;

SELECT name, Population FROM city;

SELECT name, Population
FROM city
ORDER BY population DESC
LIMIT 10;

SELECT name AS Ciudad, Population AS Poblacion
FROM city
LIMIT 10;

SELECT name AS Ciudad, Population AS Poblacion
FROM city
WHERE Population > 7000000
ORDER BY Population DESC;

SELECT name AS Ciudad, Population AS Poblacion
FROM city
WHERE Population >= 170000 AND Population <180000
ORDER BY Population DESC;

SELECT CountryCode AS Pais, name AS Ciudad, Population AS Poblacion
FROM city
WHERE CountryCode = 'CHL' OR CountryCode = 'ARG'
ORDER BY Population ASC;