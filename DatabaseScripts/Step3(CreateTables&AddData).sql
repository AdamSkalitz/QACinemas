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
Image varchar(500),
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


go
/* product category for toys*/
insert into ProductCategories(Name,ModifiedDate)
values('Toys',getdate())

/* subcategories*/
insert into ProductSubCategories(Name,ProductCategoryID, ModifiedDate)
values('Dolls',0,getdate())

insert into ProductSubCategories(Name,ProductCategoryID, ModifiedDate)
values('Lego',0,getdate())

insert into ProductSubCategories(Name,ProductCategoryID, ModifiedDate)
values('Actionfigures',0,getdate())

/* Products*/
insert into Products (ProductSubCategoryID, Name, Description, Colour, StandardCost, ListPrice, Size, Weight,ModifiedDate)
values (1, 'LEGO Death Star', 'Reenact amazing scenes from the Star Wars 
saga with the Empire’s ultimate planet-zapping weapon—the Death Star!
 With over 4,000 pieces, this fantastic model has a galaxy of intricate and 
 authentic environments, including a superlaser control room, 
 Imperial conference chamber, hangar 
 bay with moving launch rack and Lord Vader’s TIE 
 Advanced with space for Vader inside, Emperor Palpatine’s 
 throne room, Droid maintenance room, detention block, 
 trash compactor, tractor beam, cargo area, turbo laser with spring-loaded shooters and seats for the 2 Death Star Gunners, and 2 movable turbo laser towers. This fantastic set also includes 23 iconic minifigures and 2 Droids to ensure hours of Star Wars battle fun.', 'Black', 400, 400, '20X2', 60.7,getdate());	

insert into Products (ProductSubCategoryID, Name, Description, Colour, StandardCost, ListPrice, Size, Weight,ModifiedDate)
values (2, 'Marvel Legends: Captain America', 'Get ready for action with the Captain America Marvel Legends Action Figures Wave 2! 
Spanning the history of the comics plus the movies, these 6-inch scale action figures includes pieces to build Mandroid!', 'Blue', 19.99, 19.99, '15.2cm',3.2 ,getdate());	

insert into Products (ProductSubCategoryID, Name, Description, Colour, StandardCost, ListPrice, Size, Weight,ModifiedDate)
values (2, 'Deluxe Action Figure: Hulkbuster Age Of Ultron', 'This is the Iron Man armour you have been waiting for! Since the first official appearance of the massive anti-Hulk Iron Man suit, Hulkbuster, in Marvel’s Avengers: Age of Ultron trailer, fans worldwide have been filled with excitement!
Today Sideshow Collectibles and Hot Toys are proud to officially introduce the spectacular Hulkbuster Sixth Scale Collectible Figure! The movie-accurate collectible figure is specially crafted based on the image of Hulkbuster in the film. This colossal figure stands approximately 55cm (21 inches) tall and features a Mark XLIII bust inside the Hulkbuster with LED light-up eyes and arc reactor on chest. Hulkbuster features metallic red, gold and silver armour with weathering effect, and over 16 LED light-up areas in the eyes, chest, repulsor palms, back, and legs.
Prepare to make room for this gigantic machine in your Avengers: Age of Ultron collection!', 'Red and Gold', 59.99, 59.99, '55cm',5.2 ,getdate());	

insert into Products (ProductSubCategoryID, Name, Description, Colour, StandardCost, ListPrice, Size, Weight,ModifiedDate)
values (2, 'Itty Bitty Spiderman', 'Taking iconic characters from film, TV and comics, these adorable soft toys are the perfect gift for just about anyone.', 'Blue and Red', 5.99, 5.99, '11.2cm',3.2 ,getdate());	

insert into Products (ProductSubCategoryID, Name, Description, Colour, StandardCost, ListPrice, Size, Weight,ModifiedDate)
values (2, 'The Last Jedi Elite Praetorian Guard', 'This 15cm Star Wars The Last Jedi Black Series Elite Praetorian Guard 15cm Figure is carefully detailed to look like the character from Star Wars: The Last Jedi. This figure features premium detail and multiple points of articulation, and includes 1 character-inspired accessory.', 'Red', 25.99, 25.99, '15.2cm',3.2 ,getdate());	

/* product category for shirts*/
insert into ProductCategories(Name,ModifiedDate)
values('Shirt',getdate())

/* subcategories*/
insert into ProductSubCategories(Name,ProductCategoryID, ModifiedDate)
values('Costume',1,getdate())

insert into ProductSubCategories(Name,ProductCategoryID, ModifiedDate)
values('Casual',1,getdate())

/* Products*/
insert into Products (ProductSubCategoryID, Name, Description, Colour, StandardCost, ListPrice, Size, Weight,ModifiedDate)
values (3, 'Captain America T-Shirt', 'This very cool distressed look tee comes complete with Caps iconic shield design. 
Go enrol in a super solder program, join the Avengers and take it to the Red Skul!', 'Multi', 17.99, 17.99, '86-91', 4.6,getdate());	

insert into Products (ProductSubCategoryID, Name, Description, Colour, StandardCost, ListPrice, Size, Weight,ModifiedDate)
values (3, 'Doctor Who T-Shirt: Silhouette Grid', '11 Doctors, 11 silhouettes… what more could you ask for in a tee!', 'Black', 17.99, 17.99, '86-91', 1.6,getdate());	

insert into Products (ProductSubCategoryID, Name, Description, Colour, StandardCost, ListPrice, Size, Weight,ModifiedDate)
values (3, 'Star Wars T-Shirt', 'Relive your favourite Star Wars moments with this awesome t-shirt.', 'Cream', 17.99, 17.99, '86-91', 0.6,getdate());	

/* product category for Bags*/

insert into ProductCategories(Name,ModifiedDate)
values('Bag',getdate())

/* subcategories*/
insert into ProductSubCategories(Name,ProductCategoryID, ModifiedDate)
values('RetroBag',2,getdate())

/* Products*/
insert into Products (ProductSubCategoryID, Name, Description, Colour, StandardCost, ListPrice, Size, Weight,ModifiedDate)
values (4, 'Doctor Who Tardis Messenger Bag', 'Step out in style with this great retro bag featuring the TARDIS!', 'Blue', 24.99, 24.99, '38 x 28 x 5 cm', 5.3 ,getdate());	

/* product category for Books*/

insert into ProductCategories(Name,ModifiedDate)
values('Book',getdate())

/* subcategories*/
insert into ProductSubCategories(Name,ProductCategoryID, ModifiedDate)
values('StarWars',3,getdate())

/* Products*/
insert into Products (ProductSubCategoryID, Name, Description, Colour, StandardCost, ListPrice, Size, Weight,ModifiedDate)
values (6, 'Darth Maul: Son Dathomir', 'Getting cut in half by Obi-Wan Kenobi and being rejected by his former Sith Master Darth Sidious isn’t going to defeat Darth Maul.In fact, it only makes him mad enough to take on the galaxy - alongside an army of Mandalorians! 
After forming the Shadow Collective - a criminal organization composed of the Hutts, Black Sun, Mandalorians and fearsome Nightbrothers - Maul wages war against Darth Sidious and his generals, Count Dooku and General Grievous! 
Adapted from unproduced teleplays for Season Six of The Clone Wars TV series, this is the final chapter planned for Darth Maul’s saga. 
Collecting STAR WARS: DARTH MAUL - SON OF DATHOMIR #1-4 and material from STAR WARS TALES #7-9.', 'Mixed', 10.01, 10.01, '12x10cm', 1.3 ,getdate());	


/* Images*/
go

update dbo.Products
set Image = 'https://images-na.ssl-images-amazon.com/images/I/91Qa5J9sH-L._SL1500_.jpg'
where ProductID=0

update dbo.Products
set Image = 'https://images-na.ssl-images-amazon.com/images/I/71cmLZFzM2L._SL1500_.jpg'
where ProductID=1

update dbo.Products
set Image = 'https://www.thesouledstore.com/public/theSoul/uploads/catalog/product/20160711183443-1.jpg'
where ProductID=2

update dbo.Products
set Image = 'http://media.gadgetsin.com/2013/10/doctor_who_tardis_inspired_messenger_bag.jpg'
where ProductID=3

update dbo.Products
set Image = 'http://cdn3.volusion.com/roqfk.qyhnu/v/vspfiles/photos/000992MIN-13.jpg?1413445025'
where ProductID=4

update dbo.Products
set Image = 'https://i5.walmartimages.com/asr/809028da-aae4-4fb7-8dc5-c2f7558c3c26_2.a5ab52928510a2daeb9649973d9347d9.jpeg'
where ProductID=5

update dbo.Products
set Image = 'https://www.hallmark.com/dw/image/v2/AALB_PRD/on/demandware.static/-/Sites-hallmark-master/default/dwb4473d51/images/greeting-cards/itty-bittys-spiderman-root-1kid3256_1470_1.jpg?sw=625&sh=625&sm=fit'
where ProductID=6

update dbo.Products
set Image = 'http://www.starwarstoynews.com/wp-content/uploads/2017/08/Star-Wars-Last-Jedi-Elite-Praetorian-Guard-Black-Series-Figure-Amazon-Exclusive.jpg'
where ProductID=11

update dbo.Products
set Image = 'https://www.truffleshuffle.co.uk/store/images_high_res/Mens_Black_Star_Wars_Logo_T_Shirt_hi_res.jpg'
where ProductID=12

update dbo.Products
set Image = 'http://vignette4.wikia.nocookie.net/starwars/images/3/37/Darth_Maul_Son_of_Dathomir_3.png/revision/latest?cb=20140716171318'
where ProductID=13

go