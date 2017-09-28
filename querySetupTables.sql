CREATE TABLE tableStaff( staffID int primary key auto_increment, firstName varchar(20) not null, lastName varchar(20) not null, email varchar(40), jobTitle varchar(30) not null, fullTime bit not null );

CREATE TABLE tableProduct( productID int primary key auto_increment, productName varchar(30) not null, price decimal(8,2) not null, category varchar(20) );

CREATE TABLE tableCustomer( customerID int primary key auto_increment, firstName varchar(20) not null, lastName varchar(20) not null, telephone varchar(13), email varchar(40), address varchar(60) not null );

CREATE TABLE tableOrder( orderID int primary key auto_increment, paymentType varchar(10) not null, customerID int not null, orderDate date not null, estDeliveryDate date, staffID int );

CREATE TABLE tableOrderProduct( orderID int, productID int, primary key( orderID, productID ));