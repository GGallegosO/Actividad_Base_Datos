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

SELECT name AS pais
FROM country
WHERE capital IS null;

SELECT co.name AS pais, co.region, ci.name AS ciudad
FROM country co INNER JOIN city ci ON co.code = ci.countrycode
WHERE co.name ='Chile' or co.name ='Bolivia';

SELECT co.name AS pais, co.region, ci.name AS ciudad
FROM country co INNER JOIN city ci ON co.code = ci.countrycode
WHERE co.name ='Chile' or co.name ='Bolivia';

SELECT co.name AS Pais, cl.language AS Idioma, cl.isofficial AS "Es Oficial", cl.percentage AS Porcentaje
FROM country co
INNER JOIN countrylanguage cl ON co.code = cl.countrycode
WHERE co.region = 'South America'
ORDER BY co. name ASC, percentage DESC;

SELECT co.name AS Pais, co.indepyear as "Año de Independencia", YEAR( NOW() ) - co.indepyear "Años"
FROM country co
WHERE co.region = 'South America' AND
co.indepyear IS NOT NULL
ORDER BY co. indepyear ASC;

SELECT co.region AS "Región", sum(ci.population) AS "Población"
FROM country co
INNER JOIN city ci ON co.code = ci.countrycode
GROUP BY co.region
ORDER BY 1 ASC;