--B)
create table COUNTRY (c_id varchar(20),c_name varchar(20
desc country;
--C)
alter table country add primary key(c_id);
commit;
--D)
drop table country;
--F)
alter table batting009 add MOM  varchar(20);
desc batting009;
--G)
alter table batting009 drop column mom;
--H)
select n_order as batting_order,h_out as out_type from batting009;
--I)
select match_id from match009 where match_date=To_date('27-aug-2008') AND Ground='Colombo';
--J)
select match_id,team1,team2,ground,match_date as m_date,winner from match009;
--K)
select player_id,l_name,f_name from player009;
--L)
insert into player009(player_id,l_name,f_name,country,year_born,birth_place,f_test)values('200311','Clarke','Michael','Null','Null','Null','Null');

select f_name,l_name from player009 where player_id='200311';
commit;