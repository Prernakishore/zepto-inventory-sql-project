DROP table if exists Zepto;
create table Zepto(
sku_id SERIAL primary key,
category varchar(120),
name VARCHAR(150) not null,
mrp NUMERIC (8,2),
discountPercent Numeric(5,2),
availableQuantity Integer,
discountedSellingPrice NUMERIC(8,2),
weightINgms integer,
outOfStock BOOLEAN,
quantity INTEGER
);