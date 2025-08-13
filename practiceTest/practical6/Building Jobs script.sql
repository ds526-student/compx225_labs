CREATE TABLE Employees (
EmployeeID char(4) PRIMARY KEY,
EmployeeName varchar(30) NOT NULL,
HourlyRate real,
SkillType varchar(20),
SupervisorID char(4) NOT NULL);

CREATE TABLE Building (
BuildingID char(3) PRIMARY KEY,
BuildingAddress varchar(20), 
BuildingType varchar(10),
QualityLevel int);

CREATE TABLE Job (
EmployeeID char(4),
BuildingID char(3),
NumDays int,
FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
FOREIGN KEY (BuildingID) REFERENCES Building (BuildingID));

insert into Employees values ('1235', 'J. Smith', 12.5, 'electrical', '1311');
insert into Employees values ('1412', 'A. Green', 13.75, 'plumbing', '1520');
insert into Employees values ('2920', 'J. Brown', 10.0, 'roofing', '2920');
insert into Employees values ('3231', 'A. Purple', 17.4, 'carpenter', '3231');
insert into Employees values ('1520', 'J. Red', 11.75, 'plumbing', '1520');
insert into Employees values ('1311', 'A. Orange', 15.5, 'electrical', '1311');
insert into Employees values ('3001', 'A. Black', 8.2, 'carpenter', '3231');

insert into Building values ('312', '123 Tree Rd', 'office', 2);
insert into Building values ('435', '456 Ash Rd', 'retail', 1);
insert into Building values ('515', '789 Beech Rd', 'residence', 3);
insert into Building values ('210', '1234 Sycamore Rd', 'office', 3);
insert into Building values ('111', '1235 Plum Rd', 'office', 4);
insert into Building values ('460', '1236 Oak Rd', 'warehouse', 3);

insert into Job values ('1235','312',5);
insert into Job values ('1412','312',10);
insert into Job values ('1235','515',22);
insert into Job values ('2920','460',18);
insert into Job values ('1412','460',18);
insert into Job values ('2920','435',10);
insert into Job values ('2920','210',15);
insert into Job values ('3231','111',8);
insert into Job values ('1412','435',15);
insert into Job values ('1412','515',8);
insert into Job values ('3231','312',20);
insert into Job values ('1520','515',14);
insert into Job values ('1311','435',12);
insert into Job values ('1412','210',12);
insert into Job values ('1412','111',4);
insert into Job values ('3001','111',14);
insert into Job values ('1311','460',24);
insert into Job values ('1520','312',17);
insert into Job values ('3001','210',14);

Select * from Employees;
Select * from Building;
Select * from Job;