SELECT 
    'ALTER TABLE [' +  OBJECT_SCHEMA_NAME(parent_object_id) +
    '].[' + OBJECT_NAME(parent_object_id) + 
    '] DROP CONSTRAINT [' + name + ']'
FROM sys.foreign_keys
WHERE referenced_object_id = object_id('Student')

drop table ProductCategory;
drop table ProductSubCategory;
drop table Product;
drop table Account;
drop table Addresses;
drop table Orders;
drop table OrderDetails;

create table ProductCategory(
ProductCategoryID int not null,
Name varchar(50) not null,
ModifiedDate date not null
primary key (ProductCategoryID)
);

create table ProductSubCategory(
ProductSubCategoryID int not null,
ProductCategoryID int not null,
Name varchar(50) not null,
ModifiedDate date not null,
primary key (ProductSubCategoryID),
foreign key (ProductCategoryID) 
references ProductCategory(ProductCategoryID)
);

create table Product (
ProductID int not null,
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
AccountID int not null,
AddressID int not null,
Name varchar(50) not null,
Email varchar(30) not null,
Phone int not null,
Password varchar(50) not null,
ModifiedDate date not null
primary key(AccountID)
);

create table Addresses(
AddressID int not null,
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
OrderID int not null,
AccountID int not null,
Amount int not null,
CustomerAddress varchar(50) not null,
CustomerEmail varchar(20) not null,
CustomerName varchar(20)  not null,
CustomerPhone int not null,
OrderDate Date not null,
OrderNum int not null, 
ModifiedDate date not null,
primary key(OrderID),
foreign key(AccountID)
references Account(AccountID)
);

create table OrderDetails(
OrderDetailsID int not null,
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


insert into ProductCategory(ProductCategoryID, Name, ModifiedDate)
values (1, 'Toys', 'Jan-10-1999');

insert into ProductSubCategory (ProductSubCategoryID, ProductCategoryID, Name, ModifiedDate)
values (1, 1, 'Lego', 'Jan-10-1999');

insert into Product (ProductID, ProductSubCategoryID, Name, Description, Colour, StandardCost, ListPrice, Size, Weight) values
	(1, 1, 'LEGO Death Star', 'Lego death star that leeky really wants to buy with his hard earned dollery doos.', 'Black', 400, 400, '20X2', 60.7);	

select * from Product;