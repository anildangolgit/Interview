Create table #Test(col1 int,col2 int)
Insert into #Test values(1,2),(1,3),(1,4),(2,1)
-- Reverse pair is 2,1
Delete T2
From #Test T1
join #Test T2
on T1.col1=T2.col2 and T1.col2=T2.col1 and T2.col1>T1.col1 --Last Condition make sure we are only deleting only one duplicated row

select * from #Test