--Assigment 2
--1)
 select * from player009 where
 Country like 'India' and Year_Born='1980';
 
-- 2)
 select * from match009 where Team1 like 'Australia';
 
-- 3)

 select * from match009 where Team1 in ('India','England');
 
-- 4)

 select distinct player_id from bowling009;

--5)

 select Team1,Team2,Ground from match009
 where Team2 like 'India';
 
-- 6)

 select Player_id from batting009 
 where match_id='2755';
 
-- 7)

 select b1.player_id,b2.player_id from 
 batting009 b1,batting009 b2 
 where b1.match_id='2755' and b2.match_id='2689' 
 and b1.N_Runs>29 and b2.N_Runs>29;
 
-- 8)

 select player_id from player009
 where F_Test='NULL';

--9)

 update player009
 set F_Test='1997',Birth_Place='Sydney'
 where player_id='200311';
 
-- 10)
 delete from match009 where match_id='2750';

--11)
 delete from bowling009 where player_id=(
 select Player_id from player009 where F_Name='Brian'
 and L_Name='Lara');
 