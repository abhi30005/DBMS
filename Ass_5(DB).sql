 
CREATE TABLE author009 (
    Author_Id VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE publisher009 (
    Publisher_Id VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE category009 (
    Category_Id VARCHAR(10) PRIMARY KEY,
    Description VARCHAR(50)
);

CREATE TABLE catalog009 (
    Book_Id VARCHAR(10) PRIMARY KEY,
    Title VARCHAR(100),
    Author_Id VARCHAR(10) REFERENCES author009(Author_Id),
    Publisher_Id VARCHAR(10) REFERENCES publisher009(Publisher_Id),
    Category_Id VARCHAR(10) REFERENCES category009(Category_Id),
    Year INTEGER,  -- Changed from NUMBER(4) to INTEGER
    Price NUMBER(10,2)
);

CREATE TABLE member009 (
    Member_Id VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(200),
    City VARCHAR(50),
    State VARCHAR(50),
    Pin VARCHAR(10),
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE ordersum009 (
    Order_No VARCHAR(10) PRIMARY KEY,
    Member_Id VARCHAR(10) REFERENCES member009(Member_Id),
    Order_Date DATE,
    Amount NUMBER(10,2),
    Order_Status VARCHAR(50)
);

CREATE TABLE orderdetail009 (
    Order_No VARCHAR(10) REFERENCES ordersum009(Order_No),
    Book_Id VARCHAR(10) REFERENCES catalog009(Book_Id),
    Quantity NUMBER,
    PRIMARY KEY (Order_No, Book_Id)
);




INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('AD','Alan M. Davis','Colorado','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('AL','Alexis Leon','Cochin','India');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('AH','Arthur Hailey','Bahamas','Bahamas');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('AR','Arundhati Roy','New Delhi','India');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('CC','Clive Cussler','Arizona','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('DT','Don Tapscott','New York','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('EM','Ed Marquand','Seattle','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('EY','Edward Yourdon','California','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('ES','Erich Segal','Harvard','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('FE','Florence Isaacs','New York','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('FB','Frederick P. Brooks','North Carolina','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('JA','Jeffrey Archer','Cambridge','UK');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('JG','John Grisham','Virginia','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('JM','John Mole','London','UK');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('JH','Joseph Heller','New York','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('LJ','Laurie Beth Jones','Texas','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('ML','Mathews Leon','Cochin','India');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('OV','O.V.Vijayan','Palghat','India');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('PK','Peter Krass','Connecticut','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('PS','Philip Toshio Sudo','Hawaii','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('RB','Richard Bach','Washington','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('RD','Richard Bode','Denver','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('SR','Satyajit Ray','Calcutta','India');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('TC','Tom Clancy','Maryland','USA');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('TF','Tom Forester','Queensland','Australia');
INSERT INTO author009 (Author_Id, Name, City, Country) VALUES('WH','Watts S. Humphrey','Florida','USA');



INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('AP','Abbeville Press Publishers','Paris','France');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('AW','Addison-Wesley','Massachusetts','USA');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('AH','Artech House','Boston','USA');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('BB','Bantam Books','London','UK');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('BP','Blackwell Publishers','New York','USA');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('CP','Century','London','UK');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('CN','Clarkson N. Porter','New York','USA');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('CB','Corgi Books','London','UK');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('DC','DC Books','Kottayam','India');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('DP','Dell Publishing','New York','USA');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('HC','Harper Collins','London','UK');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('HY','Hyperion','New York','USA');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('JW','John Wiley & Sons, Inc.','New York','USA');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('LV','Leon Vikas','Madras','India');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('MG','McGraw-Hill','New York','USA');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('PB','Penguin Books','New Delhi','India');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('PH','Prentice Hall PTR','New Jersey','USA');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('RH','Random House','London','UK');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('SS','Simon & Schuster','New York','USA');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('TM','Tata McGraw-Hill','New Delhi','India');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('WB','Warner Books','New York','USA');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('SS','Scholastic Publishing','New York','USA');
INSERT INTO publisher009 (Publisher_Id, Name, City, Country) VALUES ('JW','JohnWiley','New York','USA');

INSERT INTO category009(Category_Id, Description) VALUES ('BS', 'Business');
INSERT INTO category009(Category_Id, Description) VALUES ('CS', 'Computer Science');
INSERT INTO category009(Category_Id, Description) VALUES ('FN', 'Fiction');
INSERT INTO category009(Category_Id, Description) VALUES ('GR', 'General');

INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B1','201 Principles of Software Development','AD','MG','CS',1995,898);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B2','A Guide to SCM','AL','AH','CS',2000,3715);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B3','Airport','AH','CB','FN',1968,175);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B4','Beachcombing at Miramar','RD','WB','GR',1996,423);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B5','Beyond Soap, Water and Comb','EM','AP','GR',1998,705);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B6','Biplane','RB','DP','GR',1966,282);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B7','Business Notes','FE','CN','BS',1998,522);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B8','Catch 22','JH','RH','FN',1994,250);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B9','Computers for Everyone','AL','LV','CS',2001,200);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B10','Countdown 2000','AL','TM','CS',1998,NULL);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B11','Death March','EY','PH','CS',1997,275890);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B12','Digital Economy','DT','MG','CS',1996,538);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B13','Doctors','ES','BB','FN',1988,150);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B14','Dragon','CC','HC','FN',1990,123);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B15','E-Biz Primer','ML','TM','CS',2001,325);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B16','ERP Demystified','AL','TM','BS',2000,397);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B17','First You have to Row a Little Boat','RD','WB','GR',1993,601);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B18','Hotel','AH','CB','FN',1965,175);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B19','Illusions','RB','DP','GR',1997,330);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B20','Inca Gold','CC','HC','FN',1994,450);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B21','Internet for Everyone','ML','LV','CS',1997,299);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B22','Introduction to Computers','ML','LV','CS',1999,550);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('J1','Jesus CEO','LJ','HY','GR',1995,375);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('J2','Jesus in Blue Jeans','LJ','HY','GR',1997,425);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('KI','Kane and Abel','JA','HC','FN',1979,320);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('MI','Management Mole','JM','CB','BS',1988,275);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('M2','Managing Technical People','WH','AW','CS',1997,615);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('M3','Managing the Software Process','WH','AW','CS',1990,540);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('S1','Silicon Samurai','TF','BP','BS',1993,490);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B23','The Book of Business Wisdom','PK','JW','BS',1997,670);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('B24','The Book of Leadership Wisdom','PK','JW','BS',1998,715);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('C4','The Class','ES','BB','FN',1985,285);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('C5','The Complete Adventures of Feluda','SR','PB','FN',2000,999);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('E3','The End of Imagination','AR','DC','GR',1998,350);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('H2','The Hunt for Red October','TC','HC','FN',1984,620);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('LI','The Legends of Khasak','OV','PB','FN',1994,270);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('M4','The Mythical Man Month','FB','AW','CS',1995,495);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('P2','The Path','LJ','HY','GR',1996,410);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('TI','The Testament','JG','CP','FN',1999,530);
INSERT INTO catalog009(Book_Id,Title,Author_Id,Publisher_Id,Category_Id,Year,Price) VALUES('Z1','Zen Computing','PS','SS','CS',1999,480);



INSERT INTO ordersum009(Order_No,Member_Id,Order_Date,Amount,Order_Status) VALUES('11096733','C01','25-Feb-2000',2038.3,'Shipped');
INSERT INTO ordersum009(Order_No,Member_Id,Order_Date,Amount,Order_Status) VALUES('11364223','C03','07-Apr-2000',1237.5,'Shipped');
INSERT INTO ordersum009(Order_No,Member_Id,Order_Date,Amount,Order_Status) VALUES('12806544','C05','30-Apr-2000',159.5,'Shipped');
INSERT INTO ordersum009(Order_No,Member_Id,Order_Date,Amount,Order_Status) VALUES('13976453','C03','25-Jul-2000',3575,'Cancelled');
INSERT INTO ordersum009(Order_No,Member_Id,Order_Date,Amount,Order_Status) VALUES('26970379','C01','25-Jul-2000',3897.3,'Shipped');
INSERT INTO ordersum009(Order_No,Member_Id,Order_Date,Amount,Order_Status) VALUES('26971454','C02','22-Aug-2000',7012.5,'Shipped');
INSERT INTO ordersum009(Order_No,Member_Id,Order_Date,Amount,Order_Status) VALUES('36532264','C05','22-Aug-2000',4371.4,'Shipped');
INSERT INTO ordersum009(Order_No,Member_Id,Order_Date,Amount,Order_Status) VALUES('36552341','C01','02-Feb-2001',1793,'Processing');
INSERT INTO ordersum009(Order_No,Member_Id,Order_Date,Amount,Order_Status) VALUES('55946511','C03','07-Feb-2001',2131.8,'Processing');
INSERT INTO ordersum009(Order_No,Member_Id,Order_Date,Amount,Order_Status) VALUES('86464430','C01','21-Feb-2001',982.3,'Processing');



INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('11096733','B2',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('11096733','B1',2);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('11364223','B3',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('11364223','B4',2);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('11364223','B5',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('11364223','B6',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('11364223','B7',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('13976453','B8',10);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('26970379','B15',2);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('26970379','B16',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('26970379','B17',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('26970379','B18',3);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('26971454','B19',15);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('26971454','B20',10);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('36532264','B21',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('36532264','B22',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('36532264','B23',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('36532264','B24',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('36552341','J1',3);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('36552341','J2',4);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('55946511','M2',2);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('55946511','M3',2);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('55946511','M4',2);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('86464430','LI',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('86464430','E3',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('86464430','C5',1);
INSERT INTO orderdetail009(Order_No,Book_Id,Quantity) VALUES('86464430','B12',1);




