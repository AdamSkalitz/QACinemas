DECLARE @sql NVARCHAR(MAX) = N'';

;WITH x AS 
(
  SELECT DISTINCT obj = 
      QUOTENAME(OBJECT_SCHEMA_NAME(parent_object_id)) + '.' 
    + QUOTENAME(OBJECT_NAME(parent_object_id)) 
  FROM sys.foreign_keys
)
SELECT @sql += N'ALTER TABLE ' + obj + ' NOCHECK CONSTRAINT ALL;
' FROM x;

EXEC sp_executesql @sql;

drop table dbo.ProductCategory
drop table dbo.ProductSubCategory
drop table dbo.Product
drop table dbo.Account
drop table dbo.Addresses
drop table dbo.Orders
drop table dbo.OrderDetails

;WITH x AS 
(
  SELECT DISTINCT obj = 
      QUOTENAME(OBJECT_SCHEMA_NAME(parent_object_id)) + '.' 
    + QUOTENAME(OBJECT_NAME(parent_object_id)) 
  FROM sys.foreign_keys
)
SELECT @sql += N'ALTER TABLE ' + obj + ' WITH CHECK CHECK CONSTRAINT ALL;
' FROM x;

EXEC sp_executesql @sql;


create table ProductCategory(
ProductCategoryID int not null identity(0,1),
Name varchar(50) not null,
ModifiedDate date not null
primary key (ProductCategoryID)
);

create table ProductSubCategory(
ProductSubCategoryID int not null identity(0,1),
ProductCategoryID int not null,
Name varchar(50) not null,
ModifiedDate date not null,
primary key (ProductSubCategoryID),
foreign key (ProductCategoryID) 
references ProductCategory(ProductCategoryID)
);

create table Product (
ProductID int not null identity(0,1),
ProductSubCategoryID int null,
Name varchar(50) not null,
Description varchar(1000) null,
Colour varchar(20),
StandardCost double precision null,
ListPrice double precision not null,
Size varchar(20) not null,
Weight double precision null,
ModifiedDate date not null
primary key (ProductID),
foreign key (ProductSubCategoryID)
references ProductSubCategory(ProductSubCategoryID)
);

create table Account(
AccountID int not null identity(0,1),
AddressID int not null,
Name varchar(50) not null,
Email varchar(30) not null,
Phone varchar(10) not null,
Password varchar(50) not null,
ModifiedDate date not null
primary key(AccountID)
);

create table Addresses(
AddressID int not null identity(0,1),
AccountID int not null, 
Address varchar(50),
Postcode varchar(10),
City varchar(30),
ModifiedDate date not null,
primary key (AddressID),
foreign key (AccountID)
references Account(AccountID)
);

create table Orders(
OrderID int not null identity(0,1),
AccountID int null,
Amount int not null,
CustomerAddress varchar(50) not null,
CustomerEmail varchar(20) not null,
CustomerName varchar(20)  not null,
CustomerPhone varchar(10) not null,
OrderDate Date not null,
OrderNum int not null, 
ModifiedDate date not null,
primary key(OrderID),
foreign key(AccountID)
references Account(AccountID)
);

create table OrderDetails(
OrderDetailsID int not null identity(0,1),
Price double precision not null,
Amount double precision not null,
Quantity int not null,
ModifiedDate date not null,
OrderID int not null,
ProductID int not null,
primary key(OrderDetailsID),
foreign key(OrderID)
references Orders(OrderID),
foreign key(ProductID)
references Product(ProductID)
);


insert into ProductCategory(Name,ModifiedDate)
values('Toys',getdate())

insert into ProductSubCategory(Name,ProductCategoryID, ModifiedDate)
values('Dolls',0,getdate())

/*Guest checkout order */
insert into Orders(Amount,CustomerName,CustomerAddress,CustomerEmail,CustomerPhone,OrderDate,OrderNum,ModifiedDate)
values(24.99,'Name SecondName','100 Fake Street','name@email.com','07787487523',getdate(), 0,getdate());

insert into OrderDetails(Price,Amount,Quantity,ModifiedDate)
values(5.98,24.99,4,getdate())

insert into Account(Name,Email,Phone,Password,ModifiedDate)
values('UserName','name@email.com','07787487545','password',getdate())

insert into Addresses(AccountID,Address,Postcode,City,ModifiedDate)
values(0,'45 NotReal Street','G5 678','Glasgow',getdate())

/*Account checkout order*/
insert into Orders(Amount,CustomerName,CustomerAddress,CustomerEmail,CustomerPhone,OrderDate,OrderNum,ModifiedDate)
values(24.99,'Name SecondName','100 Fake Street','name@email.com','07787487523',getdate(), 0,getdate());

insert into OrderDetails(Price,Amount,Quantity,ModifiedDate)
values(5.98,24.99,4,getdate())







												