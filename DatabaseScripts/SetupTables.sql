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
Color varchar(20),
StandardCost double precision null,
ListPrice double precision not null,
Size varchar(20) not null,
Weight double precision null,
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
Password varchar(50) not null
primary key(AccountID)
);

create table Addresses(
AddressID int not null,
AccountID int not null, 
Address varchar(50),
Postcode varchar(10),
City varchar(30),
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
primary key(OrderID),
foreign key(AccountID)
references Account(AccountID)
);

create table OrderDetails(
OrderDetailsID int not null,
Price double precision not null,
Amount double precision not null,
Quantity int not null,
OrderID int not null,
ProductID int not null,
primary key(OrderDetailsID),
foreign key(OrderID)
references Orders(OrderID),
foreign key(ProductID)
references Product(ProductID)
);


insert into Account(AddressID,Name,Email,Phone,Password)
values(0?,'UserName','name@email.com',07787487545,'password')

insert into Addresses(AccountID,Address,Postcode,City)
values(0?,'45 NotReal Street','G5 678','Glasgow')

insert into Orders(Amount,CustomerAddress,CustomerEmail,CustomerPhone,OrderDate,OrderNum)
values(24.99,'100 Fake Street','name@email.com',07787487523, 0);

insert into OrderDetails(Price,Amount,Quantity)
values(5.98,24.99,4)

insert into ProductCategory(Name,ModifiedDate)
values('Toys',now)

insert into ProductSubCategory(Name, ModifiedDate,ProductCategoryID)
values('Dolls',0?)


												