
create table ProductCategories(
ProductCategoryID int not null identity(0,1),
Name varchar(50) not null,
ModifiedDate date not null
primary key (ProductCategoryID)
);

create table ProductSubCategories(
ProductSubCategoryID int not null identity(0,1),
ProductCategoryID int not null,
Name varchar(50) not null,
ModifiedDate date not null,
primary key (ProductSubCategoryID),
foreign key (ProductCategoryID) 
references ProductCategories(ProductCategoryID)
);

create table Products(
ProductID int not null identity(0,1),
ProductSubCategoryID int null,
Name varchar(50) not null,
Description varchar(1000) null,
Colour varchar(20),
Image image,
StandardCost double precision null,
ListPrice double precision not null,
Size varchar(20) not null,
Weight double precision null,
ModifiedDate date not null
primary key (ProductID),
foreign key (ProductSubCategoryID)
references ProductSubCategories(ProductSubCategoryID)
);

create table Accounts(
AccountID int not null identity(0,1),
AddressID int null,
Name varchar(50) not null,
Email varchar(30) not null,
Phone varchar(11) not null,
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
references Accounts(AccountID)
);

create table Orders(
OrderID int not null identity(0,1),
AccountID int null,
Amount int not null,
CustomerAddress varchar(100) not null,
CustomerEmail varchar(20) not null,
CustomerName varchar(40)  not null,
CustomerPhone varchar(11) not null,
OrderDate Date not null,
OrderNum int not null, 
ModifiedDate date not null,
primary key(OrderID),
foreign key(AccountID)
references Accounts(AccountID)
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
);


insert into ProductCategories(Name,ModifiedDate)
values('Toys',getdate())

insert into ProductSubCategories(Name,ProductCategoryID, ModifiedDate)
values('Dolls',0,getdate())

insert into ProductSubCategories(Name,ProductCategoryID, ModifiedDate)
values('Lego',0,getdate())

insert into Products (ProductSubCategoryID, Name, Description, Colour, StandardCost, ListPrice, Size, Weight,ModifiedDate)
values (1, 'LEGO Death Star', 'Lego death star that leeky really wants to buy with his hard earned dollery doos.', 'Black', 400, 400, '20X2', 60.7,getdate());	

/*Guest checkout order */
insert into Orders(Amount,CustomerName,CustomerAddress,CustomerEmail,CustomerPhone,OrderDate,OrderNum,ModifiedDate)
values(24.99,'Name SecondName','100 Fake Street','name@email.com','07787487523',getdate(), 0,getdate());

insert into OrderDetails(OrderID,ProductID,Price,Amount,Quantity,ModifiedDate)
values(0,2,5.98,24.99,4,getdate())

insert into Accounts(Name,Email,Phone,Password,ModifiedDate)
values('UserName','name@email.com','07787487545','password',getdate())

insert into Addresses(AccountID,Address,Postcode,City,ModifiedDate)
values(0,'45 NotReal Street','G5 678','Glasgow',getdate())

/*Account checkout order*/
insert into Orders(AccountID,Amount,CustomerName,CustomerAddress,CustomerEmail,CustomerPhone,OrderDate,OrderNum,ModifiedDate)
values(0,24.99,'Name SecondName','100 Fake Street','name@email.com','07787487523',getdate(), 0,getdate());

insert into OrderDetails(OrderID,ProductID,Price,Amount,Quantity,ModifiedDate)
values(0,2,5.98,24.99,4,getdate())


select * from Products;