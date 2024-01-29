-- Ekstrak data dari database Staging
insert into Fact_SalesOrder (IDPesanan, IDPelanggan, IDProduk, Quantity, Amount, IDStatus, OrderDate)
select order_id, customer_id, product_id, quantity, amount, status_id, order_date
from Staging.dbo.sales_order