# Write your MySQL query statement below
SELECT person_name 
FROM 
(
  SELECT person_name, SUM(weight) OVER(ORDER BY turn) as com_weight
  FROM queue
) alias
WHERE com_weight <= 1000
ORDER BY com_weight DESC
LIMIT 1

# Another way
SELECT q1.person_name
FROM Queue q1 INNER JOIN Queue q2
ON q1.turn >= q2.turn
GROUP BY q1.turn
HAVING SUM(q2.weight) <= 1000
ORDER BY SUM(q2.weight) DESC
LIMIT 1