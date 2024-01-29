create table Dim_Customer(
	IDPelanggan int not null primary key,
	NamaDepan varchar(15) not null,
	NamaAkhir varchar(15) not null,
	Umur int not null,
	JenisKelamin varchar(15) not null,
	Kota varchar(15) not null,
	NomorHP varchar(15) not null
);

create table Dim_Product(
	IDProduk int not null primary key,
	NamaProduk varchar(50) not null,
	KategoriProduk varchar(50) not null,
	HargaProduk int not null
);

create table Dim_StatusOrder(
	IDStatus int not null primary key,
	StatusOrder varchar(50) not null,
	StatusOrderDesc varchar(50) not null
);

create table Fact_SalesOrder(
	IDPesanan int not null primary key,
	IDPelanggan int not null,
	IDProduk int not null,
	Quantity int not null,
	Amount int not null,
	IDStatus int not null,
	OrderDate date not null,
	constraint IDPelanggan foreign key (IDPelanggan) references Dim_Customer(IDPelanggan),
	constraint IDProduk foreign key (IDProduk) references Dim_Product(IDProduk),
	constraint IDStatus foreign key (IDStatus) references Dim_StatusOrder(IDStatus)
);