-- Ekstrak data dari database Staging
insert into Dim_Customer (IDPelanggan, NamaLengkap, Umur, JenisKelamin, Kota, NomorHP)
select customer_id, upper(concat(first_name, ' ', last_name)) as NamaLengkap, age, gender, city, no_hp
from Staging.dbo.customer