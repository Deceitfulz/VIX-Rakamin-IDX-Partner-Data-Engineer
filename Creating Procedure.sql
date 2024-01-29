create procedure deceitful @IDStatus int as
begin
select fso.IDPesanan, dc.NamaLengkap, dp.NamaProduk, fso.Quantity, dso.StatusOrder
	from Fact_SalesOrder fso
	join Dim_Customer dc on fso.IDPelanggan = dc.IDPelanggan
	join Dim_Product dp on fso.IDProduk = dp.IDProduk
	join Dim_StatusOrder dso on fso.IDStatus= dso.IDStatus
	where fso.IDStatus= @IDStatus
end