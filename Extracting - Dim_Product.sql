-- Ekstrak data dari database Staging
insert into Dim_Product (IDProduk, NamaProduk, KategoriProduk, HargaProduk)
select product_id, product_name, product_category, product_unit_price
from Staging.dbo.product