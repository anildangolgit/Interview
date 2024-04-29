-- input


-- create table #user_activity(date date,user_id int,activity varchar(50));

-- insert into #user_activity values('2022-02-20',1,"abc");
-- insert into #user_activity values('2022-02-20',2,"xyz");
-- insert into #user_activity values('2022-02-22',1,"xyz");
-- insert into #user_activity values('2022-02-22',3,"klm");
-- insert into #user_activity values('2022-02-24',1,"abc");
-- insert into #user_activity values('2022-02-24',2,"abc");
-- insert into #user_activity values('2022-02-24',3,"abc");

-- problem statement: Calculate unique user count for each day

-- Desired output
-- 2022-02-20 2
-- 2022-02-22 1
-- 2022-02-24 0


select 
ua1.date,count(distinct ua1.userId)
from user_activity ua1
where ua1.date<ua2.date and not exists(select * from user_activity where ua1.user_id=ua2.user_id and ua1.date<ua2.date2)



