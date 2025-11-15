-- USDA Production Project - SQL Starter
-- This file gives you a structure and example patterns.
-- Fill in or adjust the queries as needed based on your project questions.

-- 1. Total milk production for a given year
-- Replace 2023 with the year you need
SELECT SUM(Value) AS total_milk
FROM milk_production
WHERE Year = 2023;

-- 2. Highest yogurt production value for a given year
SELECT MAX(Value) AS highest_yogurt
FROM yogurt_production
WHERE Year = 2022;

-- 3. Average honey production for a given year
SELECT AVG(Value) AS avg_honey
FROM honey_production
WHERE Year = 2022;

-- 4. States producing both honey and milk in a given year
SELECT DISTINCT h.State_ANSI
FROM honey_production h
JOIN milk_production m
  ON h.State_ANSI = m.State_ANSI
 AND h.Year = m.Year
WHERE h.Year = 2022;

-- 5. Join with state lookup to get state names
SELECT s.State, p.State_ANSI, p.Value
FROM state_lookup s
JOIN cheese_production p
  ON s.State_ANSI = p.State_ANSI
WHERE p.Year = 2023;

-- Add more queries as needed for your analysis.
