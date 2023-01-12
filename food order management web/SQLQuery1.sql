create database foodie

use foodie

create table users(
userid int primary key identity(1,1) not null,
name varchar(50) null,
username varchar(50) null unique,
mobile varchar(50) null,
email varchar(50) null unique,
address varchar(max) null,
postcode varchar(50) null, 
password varchar(50) null,
imageurl varchar(max) null,
createdDate datetime null
)

create table contacts(
contactid int primary key identity(1,1) not null,
name varchar(50) null,
email varchar(50) null,
subject varchar(200) null,
message varchar(max) null,
createdDate datetime null
)

create table categories(
categoryid int primary key identity(1,1) not null,
name varchar(50) null,
imageurl varchar(max) null,
isactive bit null,
createdDate datetime null
)

create table products(
productid int primary key identity(1,1) not null,
name varchar(50) null,
description varchar(max) null,
price decimal(18, 2) null,
quantity int null,
imageurl varchar(max) null,
categoryid int null, --Foreign key
isactive bit null,
createdDate datetime null
)

create table carts(
cartid int primary key identity(1,1) not null,
productid int null, --Foreign key
quantity int null,
userid int null -- Foreign key
)

create table orders(
 int primary key identity(1,1) not null,
orderno varchar(max) null,
productid int null, --Foreign key
quantity int null,
userid int null, --Foreign key
status varchar(50) null,
paymentid int null, --Foreign key
orderdate datetime null
)

create table payment(
paymentid int primary key identity(1,1) not null,
name varchar(50) null,
cardno varchar(50) null,
expirydate varchar(50) null,
cvvno int null,
address varchar(max) null,
paymentmode varchar(50) null
)

select users.name,payment.paymentmode
from users
inner join payment on users.name=payment.paymentmode;

select users.name,payment.paymentmode
from users
right join payment on users.name=payment.paymentmode;

group by user_id;


