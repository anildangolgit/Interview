-- https://www.youtube.com/watch?v=EvEO0p-lRaI


-- Following is the CREATE and INSERT statement for two employee tables covered in this video


CREATE Table #EMPLOYEE
(
    Employee_ID      VARCHAR(20) 
  , Employee_Name    VARCHAR(250)
  , Employee_City    VARCHAR(100)
  , Employee_DOB     DATE
  , Employee_Pin_Code VARCHAR(100)
  , Salary      INT
);

CREATE TABLE  #MAP_EMPLOYEE_HIERARCHY
(
    Employee_ID      VARCHAR(20) 
  , Manager_Employee_ID  VARCHAR(250)
);

INSERT INTO #EMPLOYEE VALUES
        ('EMP1','Sarah','Phoenix','1982-11-12', '85027',150000),
  ('EMP2','Mellisa','LA','1980-04-24', '85027',200000),
  ('EMP3','John','Boston','1986-02-18', '85027',180000),
  ('EMP4','Gary','NewMexico','1975-02-12', '87121',170000),
  ('EMP5','Tony','SFO','1960-01-08', '94016',300000),
  ('EMP6','Jason','Utah','1972-05-25', '84118',110000),
     ('EMP7','Adam','Boston','1970-02-18', '85027',250000),
  ('EMP8','Terry','NewMexico','1980-02-12', '87121',300000),
  ('EMP9','Phil','SFO','1978-01-08', '94016',270000),
  ('EMP10','David','Utah','1980-05-25', '84118',280000);

INSERT INTO #MAP_EMPLOYEE_HIERARCHY VALUES
        ('EMP1','EMP4'),
  ('EMP2','EMP5'),
  ('EMP3','EMP5')
  ('EMP6','EMP4'),
        ('EMP4','EMP7'),
  ('EMP5','EMP8'),
  ('EMP8','EMP9'),
  ('EMP9','EMP10'),
  ('EMP10', NULL);


select * from #MAP_EMPLOYEE_HIERARCHY

  --Display the employee id and employeename of employees who are also the managers


  SELECT
 mgr.Employee_ID,mgr,Employee_ID
  from #Employee Mgr
  join #Employee emp
  on mgr.employeeid=emp.managerid

  --Show top 3 highest earning employees

select Employee_id,Employee_name,Salary
FROM
(
select Employee_id,Employee_Name,Salary, DENSE_RANK() over(order by Salary Desc) Rank From #Employee
) T
where Rank in (1,2,3)

--Display those employee who are reporting to same manager

