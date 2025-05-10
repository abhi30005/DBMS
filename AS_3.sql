--Assignment 3:

--1)
 select ground
 from match009
 where Team1='Australia'
 order by Ground asc;
 
  select ground
 from match009
 where Team1='Australia'
 order by Ground desc;
 
-- 2)


 Select F_Name,L_Name from player009
 where L_Name like 'S_n%';
 
-- 3)

 select match_id from batting009 where Player_id
 in ( select Player_id from player009 where 
 L_Name='Tendulkar');
 
-- 4)
 select * from batting009 where Player_id
 in ( select Player_id from player009 where 
 L_Name like 'Dhoni');


--5)
 select match_id  from batting009 where Player_id
 in ( select Player_id from player009 where 
 F_Name like 'Sachin' and L_Name like 'Tendulkar');
 
-- 6)

 select Player_id,N_Runs from batting009
 where N_Runs between 51 and 75 and 
 match_id in (select match_id from match009
 where Ground='Colombo');
 

 
 
