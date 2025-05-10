--Assignment: 4
--1)
  select count(Player_id) from bowling009
  where Match_id='2689';
  
--  2)
   select avg(N_Runs) from batting009 
   where match_id='2689';

--3)
  select F_Name,L_Name from player009 
  where Year_Born=(select max(Year_Born) from player009);
  
--  4)
  select Country,count(Player_id) 
  from player009 group by Country;
  
--  5)
 select Player_id,avg(N_Runs) 
 from batting009 group by(Player_id);
 
--6)
  select F_Name,avg(N_Runs) from player009 p,batting009 b 
  where p.Player_id=b.PLayer_id and p.Country 
  like 'India' group by F_Name;
  
--7)
   select F_Name,avg(N_Runs) from player009 p,batting009 b,match009 m 
   where p.Player_id=b.PLayer_id and m.Team1 
   like 'Australia' group by F_Name;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  