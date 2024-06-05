Given a employees and departments table, select the top 3 departments with at least ten employees and rank them according to the percentage of their employees making over 100K in salary.

Example:

Input:

employees table

Columns	Type
id	INTEGER
first_name	VARCHAR
last_name	VARCHAR
salary	INTEGER
department_id	INTEGER
departments table

Columns	Type
id	INTEGER
name	VARCHAR
Output:

Column	Type
percentage_over_100k	FLOAT
department_name	VARCHAR
number_of_employees	INTEGER