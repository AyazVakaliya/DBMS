-----CREATE DATABASE 
-----Syntax CREATE DATABASE DatabaseName
create database Bank_Info;

-----CREATE TABLE 
-----Syntax CREATE TABLE TableName( ColumsName )
create table Deposit(
	Actno INT,
	Cname VARCHAR(50),
	Bname VARCHAR(50),
	Amount DECIMAL(8,2),
	adate DATETIME
);
CREATE TABLE Branch(
	bname VARCHAR(50),
	city VARCHAR(50)
);

CREATE TABLE Customers(
	Cname VARCHAR(50),
	City VARCHAR(50)
);

CREATE TABLE Borrow(
	Loanno INT,
	Cname VARCHAR(50),
	Bname VARCHAR(50),
	Amount DECIMAL(8,2)
);
-----Insert VALUE in to TABLE;
-----Syntax INSERT INTO TableName Values ( Values )
INSERT INTO Deposit VALUES
	(101,'anil','vrce',1000.00,'3-1-95'),
	(102,'sunil','ajni',5000.00,'1-4-96'),
	(103,'mehul','karolbag',3500.00,'11-17-95'),
	(104,'madhuri','chandi',1200.00,'12-17-95'),
	(105,'pramod','m.g.road',3000.00,'3-27-96'),
	(106,'sandip','andheri',2000.00,'3-31-96'),
	(107,'sivani','virar',1000.00,'9-5-95'),
	(108,'kranti','naheru place',5000.00,'7-2-95'),
	(109,'minu','powai',7000.00,'8-10-95');

INSERT INTO Branch VALUES
	('vrce','nagpur'),
	('anji','nagpur'),
	('karolbagh','delhi'),
	('chandi','delhi'),
	('dharmamptha','nagpur'),
	('m.g.road','banglore'),
	('andheri','bombay'),
	('virar','bombay'),
	('naheru place','delhi'),
	('powai','bombay');

INSERT INTO Customers VALUES
	('anil','calcuta'),
	('sunil','delhi'),
	('mehul','baroda'),
	('mandar','patana'),
	('madhuri','nagpur'),
	('pramod','nagpur'),
	('sandip','surat'),
	('sivani','bombay'),
	('kranti','bombay'),
	('naren','bombay');

INSERT INTO Borrow VALUES
	(201,'anil','vrce',1000.00),
	(206,'mehul','anji',5000.00),
	(311,'sunil','dharmpetha',3000.00),
	(321,'madhuri','andheri',2000.00),
	(375,'pramod','virar',8000.00),
	(481,'kranti','naheru place',3000.00),
	(222,'kapil','virar',null);

