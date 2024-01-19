# Write your MySQL query statement below
SELECT "Low Salary" AS Category, SUM(income < 20000) AS accounts_count
FROM Accounts
UNION
SELECT "Average Salary" Category, SUM(income >= 20000 AND income <= 50000) AS accounts_count
FROM Accounts
UNION
SELECT "High Salary" category, SUM(income > 50000) AS accounts_count
FROM Accounts


#OR
SELECT
  "Low Salary" AS category,
   COUNT(income) AS accounts_count
FROM Accounts
WHERE income < 20000
UNION
SELECT
  "Average Salary" AS category,
   COUNT(income) AS accounts_count
FROM Accounts
WHERE income >= 20000 AND income <= 50000
UNION
SELECT
  "High Salary" AS category,
   COUNT(income) AS accounts_count
FROM Accounts
WHERE income > 50000