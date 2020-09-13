-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

-- Largest population size for Gabon
SELECT * FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC
LIMIT 1;

-- 10 lowest population countries in 2005
SELECT * FROM population_years
WHERE year = 2005
ORDER BY population ASC
Limit 10;

-- Distinct countries with a population over 100 million in 2010
SELECT DISTINCT country FROM population_years
WHERE year = 2010 AND population > 100;

-- Countries with the word "Islands" in their name
SELECT DISTINCT country FROM population_years
WHERE country LIKE '%islands%';

-- Comparing 2000 and 2010 population in Indonesia
SELECT * FROM population_years
WHERE country = 'Indonesia' AND (year = 2000 OR year = 2010);
