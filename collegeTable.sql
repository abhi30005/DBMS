--Table Create

create table match009(match_id varchar(10) primary key,Team1 varchar(20),Team2 varchar(20),ground varchar(20),match_date date,winner varchar(20));

create table player009(player_id varchar(10) primary key,L_name varchar(20),F_name varchar(20),country varchar(20),year_born varchar(20),birth_place varchar(20),F_test varchar(20));

create table batting009(match_id varchar(10) references match009(match_id),player_id varchar(10) references player009(player_id),n_order number(3),h_out varchar(5),fow number(3),n_runs number(3),mts number(3),nballs number(3),fours number(3),six number(3));

create table bowling009(match_id varchar(10) references match009(match_id),player_id varchar(10) references player009(player_id),n_overs number(3),maidens number(3),n_runs number(3),n_wickets number(3));

-- Drop Column
drop table bowling009;

-- Describe Table Details
desc bowling009;

-- Match Table Data

INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2324','Pakistan','India','Peshawar','6-feb-2006','Team1');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2327','Pakistan','India','Rawalpindi','11-feb-2006','Team2');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2357','India','England','Delhi','28-mar-2006','Team1');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2377','West Indies','India','Kingston','18-may-2006','Team2');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2404','Sri Lanka','India','Colombo','16-aug-2006','Abandoned');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2440','India','Australia','Mohali','29-oct-2006','Team2');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2449','South Africa','India','Cape Town','26-nov-2006','Team1');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2480','India','West Indies','Nagpur','21-jan-2007','Team1');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2493','India','West Indies','Vadodara','31-jan-2007,'Team1');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2520','India','Sri Lanka','Rajkot','11-feb-2007','Team2');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2611','England','India','Southampton,'21-aug-2007','Team1');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2632','India','Australia','Mumbai','17-oct-2007','Team1');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2643','India','Pakistan','Guwahati','5-nov-2007','Team1');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2675','Australia','India','Melbourne','10-feb-2008','Team2');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2681','India','Sri Lanka','Adelaide','19-feb-2008','Team1');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2688','Australia','India','Sydney','2-mar-2008','Team2');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2689','Australia','India','Brisbane','4-mar-2008','Team2');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2717','Pakistan','India','Karachi','26-jun-2008','Team2');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2750','Sri Lanka','India','Colombo','24-aug-2008','Team2');
INSERT INTO Match009(match_id, team1, team2, ground, match_date, winner)VALUES('2755','Sri Lanka','India','Colombo','27-aug-2008','Team2');

-- View Table Contain

select * from match009;
select * from player009;

-- Player Table Data 


INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('89001', 'Tendulkar', 'Sachin', 'India', '1973', 'Mumbai', '1989');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('90001', 'Lara', 'Brian', 'West Indies', '1969', 'Santa Cruz', '1990');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('95001', 'Ponting', 'Ricky', 'Australia', '1974', 'Launceston', '1995');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('96001', 'Dravid', 'Rahul', 'India', '1973', 'Indore', '1996');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('96002', 'Gibbs', 'Herschelle', 'South Africa', '1974', 'Cape Town', '1996');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('92001', 'Warne', 'Shane', 'Australia', '1969', 'Melbourne', '1992');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('95002', 'Pollock', 'Shaun', 'South Africa', '1973', 'Port Elizabeth', '1995');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('99003', 'Vaughan', 'Michael', 'England', '1974', 'Manchester', '1999');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('92003', 'Ul-Huq', 'Inzamam', 'Pakistan', '1970', 'Multan', '1992');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('94004', 'Fleming', 'Stephen', 'New Zealand', '1973', 'Christchurch', '1994');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('93002', 'Streak', 'Heath', 'Zimbabwe', '1974', 'Bulawayo', '1993');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('90002', 'Kumble', 'Anil', 'India', '1970', 'Bangalore', '1990');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('93003', 'Kirsten', 'Gary', 'South Africa', '1967', 'Cape Town', '1993');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('95003', 'Kallis', 'Jacques', 'South Africa', '1975', 'Cape Town', '1995');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('94002', 'Vaas', 'Chaminda', 'Sri Lanka', '1974', 'Mattumagala', '1994');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('92002', 'Muralitharan', 'Muthiah', 'Sri Lanka', '1972', 'Kandy', '1992');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('97004', 'Vettori', 'Daniel', 'New Zealand', '1979', 'Auckland', '1997');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('25001', 'Dhoni', 'MS', 'India', '1981', 'Ranchi', '2005');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('23001', 'Singh', 'Yuvraj', 'India', '1981', 'Chandigarh', '2003');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('96003', 'Ganguly', 'Saurav', 'India', '1972', 'Calcutta', '1996');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('99002', 'Gilchrist', 'Adam', 'Australia', '1971', 'Bellingen', '1999');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('24001', 'Symonds', 'Andrew', 'Australia', '1975', 'Birmingham', '2004');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('99001', 'Lee', 'Brett', 'Australia', '1976', 'Wollongong', '1999');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('91001', 'Jayasuriya', 'Sanath', 'Sri Lanka', '1969', 'Matara', '1991');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('21001', 'Sehwag', 'Virender', 'India', '1978', 'Delhi', '2001');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('98001', 'Afridi', 'Shahid', 'Pakistan', '1980', 'Khyber Agency', '1998');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('98002', 'Singh', 'Harbhajan', 'India', '1980', 'Jalandhar', '1998');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('27001', 'Kumar', 'Praveen', 'India', '1986', 'Meerut', 'NULL');
INSERT INTO Player009 (Player_ID, L_Name, F_Name, Country, Year_Born, Birth_Place, F_Test) VALUES('27002', 'Sharma', 'Ishant', 'India', '1988', 'Delhi', '2007');

-- Batting Table Data


INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2755', '23001', 3, 'C', 51, 0, 12, 6, 0, 0);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2755', '25001', 5, 'C', 232, 71, 104, 80, 4, 0);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2755', '91001', 1, 'C', 74, 60, 85, 52, 8, 2);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2755', '94002', 7, 'LBW', 157, 17, 23, 29, 1, 0);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2755', '92002', 11, 'NO', NULL, 1, 11, 7, 0, 0);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2689', '89001', 2, 'C', 205, 91, 176, 121, 7, 0);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2689', '23001', 4, 'C', 175, 38, 27, 38, 2, 2);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2689', '25001', 5, 'C', 240, 36, 52, 37, 2, 1);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2689', '99002', 1, 'C', 2, 2, 3, 3, 0, 0);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2689', '95001', 3, 'C', 8, 1, 9, 7, 0, 0);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2689', '24001', 5, 'C', 123, 42, 81, 56, 2, 1);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2689', '99001', 8, 'B', 228, 7, 20, 12, 0, 0);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2689', '27001', 9, 'C', 255, 7, 7, 7, 1, 0);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2755', '27001', 9, 'B', 257, 2, 7, 6, 0, 0);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2689', '98002', 8, 'LBW', 249, 3, 7, 3, 0, 0);
INSERT INTO batting009 (Match_ID, Player_ID, n_Order, h_Out, FOW, N_Runs, Mts, Nballs, Fours, Six) VALUES('2755', '98002', 8, 'RO', 253, 2, 7, 4, 0, 0);

select * from batting009;


--Bowling Table data


INSERT INTO bowling009 (Match_ID, Player_ID, N_Overs, Maidens, N_Runs, N_Wickets) VALUES('2689', '99001', 10, 0, 58, 1);
INSERT INTO bowling009 (Match_ID, Player_ID, N_Overs, Maidens, N_Runs, N_Wickets) VALUES('2689', '24001', 3, 0, 27, 1);
INSERT INTO bowling009 (Match_ID, Player_ID, N_Overs, Maidens, N_Runs, N_Wickets) VALUES('2689', '23001', 3, 0, 15, 0);
INSERT INTO bowling009 (Match_ID, Player_ID, N_Overs, Maidens, N_Runs, N_Wickets) VALUES('2755', '94002', 9, 1, 40, 1);
INSERT INTO bowling009 (Match_ID, Player_ID, N_Overs, Maidens, N_Runs, N_Wickets) VALUES('2755', '92002', 10, 0, 56, 1);
INSERT INTO bowling009 (Match_ID, Player_ID, N_Overs, Maidens, N_Runs, N_Wickets) VALUES('2755', '91001', 4, 0, 29, 0);
INSERT INTO bowling009 (Match_ID, Player_ID, N_Overs, Maidens, N_Runs, N_Wickets) VALUES('2755', '23001', 10, 0, 53, 2);
INSERT INTO bowling009 (Match_ID, Player_ID, N_Overs, Maidens, N_Runs, N_Wickets) VALUES('2755', '98002', 10, 0, 40, 3);
INSERT INTO bowling009 (Match_ID, Player_ID, N_Overs, Maidens, N_Runs, N_Wickets) VALUES('2689', '98002', 10, 0, 44, 1);

select * from bowling009;

commit;