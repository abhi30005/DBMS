--a)
select * from player009 where Country='India' and Year_Born='1980';
--b)
select * from match009 where Team1 like 'Australia';
--c)
select * from match009 where Team1 like 'India' or Team1 like 'England';
select * from match009 where Team1 in('India','England');
--d)
desc bowling009 ;
select player_id from bowling009;
--e)
select Team2,Ground from match009 where Team2 like 'India';

--f)
select player_id from batting009 where Match_Id='2755';
--g)
select b1.player_id,b2.player_id from batting009 b1,batting009 b2 where b1.match_id='2755' and b2.match_id='2689' and b1.N_Runs>29 and b2.N_Runs>29;

--h)
select player_id from player009 where F_Test='NULL';
select * from player009;
--i)
UPDATE player009
SET F_Test='1997',Birth_Place='Sydney'
WHERE player_id='200311';

select * from player009;
--j)
DELETE FROM match009 WHERE id = '2689';
--k)
DELETE FROM bowling009
WHERE F_Name like 'Brian' and L_Name like 'Lara';
