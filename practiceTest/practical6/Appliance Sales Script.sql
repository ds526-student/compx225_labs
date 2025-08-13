CREATE TABLE Appliances (
ID char(3) PRIMARY KEY,
AppType varchar(20), 
StoreID char(2),
Cost real,
Price real);

CREATE TABLE Stores (
StoreID char(2) PRIMARY KEY,
City varchar(30) NOT NULL,
Rating int);

CREATE TABLE Salespeople (
EmployeeID char(4) PRIMARY KEY,
EmployeeName varchar(30) NOT NULL,
CommRate int,
BaseSalary int,
SupervisorID char(4));

CREATE TABLE Sales (
SaleDate date,
EmployeeID char(4),
AppID char(3),
Qty int);

insert into Salespeople values ('1235', 'Linda Smith', 15, 1200, '1412');
insert into Salespeople values ('1412', 'Anne Green', 12, 1800, NULL);
insert into Salespeople values ('2920', 'Charles Brown', 10, 1150, '1412');
insert into Salespeople values ('3231', 'Harry Purple', 18, 1700, '1412');

insert into Stores values ('22', 'Hamilton', 8);
insert into Stores values ('20', 'Te Awamutu', 6);
insert into Stores values ('27', 'Huntly', 9);

insert into Appliances values ('100', 'Refrigerator', '22', 150, 250);
insert into Appliances values ('150', 'Television', '27', 225, 340);
insert into Appliances values ('110', 'Refrigerator', '20', 175, 300);
insert into Appliances values ('200', 'Microwave Oven', '22', 120, 180);
insert into Appliances values ('300', 'Washer', '27', 200, 325);
insert into Appliances values ('310', 'Washer', '22', 280, 400);
insert into Appliances values ('400', 'Dryer', '20', 150, 220);
insert into Appliances values ('420', 'Dryer', '22', 240, 360);

insert into Sales values ('2010/1/1','1412','150',1);
insert into Sales values ('2010/1/5','3231','110',1);
insert into Sales values ('2010/1/3','2920','110',2);
insert into Sales values ('2010/1/13','1412','100',1);
insert into Sales values ('2010/1/25','1235','150',2);
insert into Sales values ('2010/1/22','1235','100',2);
insert into Sales values ('2010/1/12','2920','150',3);
insert into Sales values ('2010/1/14','3231','100',1);
insert into Sales values ('2010/1/15','1235','300',1);
insert into Sales values ('2010/1/3','2920','200',2);
insert into Sales values ('2010/1/31','2920','310',1);
insert into Sales values ('2010/1/5','1412','420',1);
insert into Sales values ('2010/1/15','3231','400',2);

Select * from Salespeople;
Select * from Stores;
Select * from Appliances;
Select * from Sales;