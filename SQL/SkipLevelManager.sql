-- Find the skip - level manager of each employe

Create table Employee(EmployeeId,ManagerId)



Create table #Employee(EmployeeId int,ManagerId int)
--output 3,1
Insert into #Employee values(3,2),(2,1)
select * from #Employee

Select 
E2.EmployeeId ,E1.ManagerId
From #Employee E1
inner join #Employee E2
on E1.Employeeid=E2.ManagerId