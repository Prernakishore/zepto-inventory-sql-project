# Zepto Inventory Analysis (PostgreSQL Project)

This is a basic SQL project analyzing inventory data from Zepto using PostgreSQL. It includes table creation, data import, and SQL-based analysis.

##  Tools Used
. PostgreSQL
. pgAdmin
. Visual Studio Code

## 📦 Table Description
The 'zept' table contains:
- 'id': Auto-incremented product ID
- 'name': name Of Product
- 'mrp': Maximum Retail Price
- 'category': Category of Products
- 'discount_percentage': Discount offered
- 'weight_in_gms: weight of Products
- 'quantity': Quantity available
- `out_of_stock`: Boolean flag for stock status

## 📌 SQL Analysis Includes:
- Out-of-stock items
- Highest discounts
- Daily stock tracking
- estimated revenue
- Average pricing
- Price difference analysis
- categories the product into low, medium, bulk

## 📂 Files in this Repo:
- `create_table.sql`: Table creation SQL script
- `queries.sql`: SQL queries used for analysis

