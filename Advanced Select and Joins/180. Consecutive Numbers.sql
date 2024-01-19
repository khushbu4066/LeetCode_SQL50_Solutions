# Write your MySQL query statement below
SELECT DISTINCT l1.Num AS ConsecutiveNums
FROM Logs l1, Logs l2, Logs l3
WHERE l1.Id = l2.Id - 1 AND l2.Id = l3.Id - 1 AND l1.Num = l2.Num AND l2.Num = l3.Num


# l1,l2,l3 are the instances of log table
# Here we want to compare 3 rows of the same table thats why taken 3 instances
# In where condition checking 3 consecutive ids after that IN AND condition checking is the num same 