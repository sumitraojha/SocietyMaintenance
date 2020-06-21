show databases;
create database Society;
use Society;
create table mastertable
( flatno varchar(20) primary key,
ownername varchar(50) not null,
totalsqft varchar(10) not null,
maintenancePerSqft varchar(20) not null,
carparkingCharge varchar(20) not null,
waterCharge varchar(20) not null,
storeRoom varchar(20),
totalMaintenanceChargePerMonth varchar(20) not null,
emailId varchar(50) unique);
 commit;
select * from mastertable;

create table logintable
(username varchar(50) primary key,
managername varchar(50),
password varchar(50));
 commit;
 
 create table transactiontable
(flatno varchar(20),
billReceipt varchar(20),
startDate varchar(20),
EndDate varchar(20),
totalNumMonthsCharge varchar(20),
totalMaintenanceCharge varchar(20),
modeofPayment varchar(30),
chequeOrTransactionId varchar(20) primary key,
bankName varchar(70),
ifscCode varchar(10),
accNo varchar(50),
accHolderName varchar(70),
paymentStatus varchar(50) default 'Initiated',
printReceiptGeneratedStatus boolean,
FOREIGN KEY (flatno) REFERENCES mastertable(flatno));


commit;
show tables;
select * from mastertable;
select * from transactiontable;
select * from logintable;
insert into logintable (username, managername, password)
values ('SocietyManager', 'admin', 'password1'); 



 commit;
use Society;
select * from logintable;
select * from mastertable;
select * from transactiontable;
