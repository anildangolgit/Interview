--https://leetcode.com/problems/consecutive-numbers/description/
/* Write your T-SQL query statement below */
/*
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| num         | varchar |
+-------------+---------+
In SQL, id is the primary key for this table.
id is an autoincrement column starting from 1.
 

Find all numbers that appear at least three times consecutively.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Logs table:
+----+-----+
| id | num |
+----+-----+
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |
+----+-----+
Output: 
+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+
Explanation: 1 is the only number that appears consecutively for at least three times.
()
*

select distinct num  as ConsecutiveNums from
(
select id,num,lead(num,1) over(order by id) as [Next+1],lead(num,2) over(order by id)  as [Next+2] from Logs
) T
where num=[next+1] and [next+1]=[next+2]
