create table match009(match_id varchar(10) primary key,Team1 varchar(20),Team2 varchar(20),ground varchar(20),match_date date,winner varchar(20));
desc match009;
create table player009(player_id varchar(10) primary key,lname varchar(20),fname varchar(20),country varchar(20),yborn number(4),bplace varchar(20),ftest number(4));
desc player009;
create table batting009(match_id varchar(10) references match009(match_id),player_id varchar(10) references player009(player_id),n_order number(2),hout varchar(5),fow varchar(5),n_runs number(5),mts number(5),nballs number(5),fours number(3),six number(3));
 desc batting009;
 
 create table bowling009(match_id varchar(10) references match009(match_id),player_id varchar(10) references player009(player_id),n_over number(5),maidens number(2),n_runs number(5),n_wickets number(5));
 desc bowling009;
 
 