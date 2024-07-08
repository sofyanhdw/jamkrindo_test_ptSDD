create database penjualan_jamkrindo;

use penjualan_jamkrindo;

Create table data_barang(
id_barang int not null PRIMARY KEY,
nama_barang varchar(50),
kategori_barang varchar(20),
jumlah_barang int,
keterangan_barang varchar(100)
);

Create table data_pembeli(
id_pembeli int not null PRIMARY KEY,
nama_pembeli varchar(50),
nomor_identitas_pembeli varchar(10),
jenis_kelamin_pembeli varchar(5),
alamat_pembeli varchar(100),
nomor_hp_pembeli varchar(30)
);

Create table data_toko(
id_toko int not null PRIMARY KEY,
nama_toko varchar(50),
alamat_toko varchar(100),
lokasi_toko varchar(50)
);

Create table data_penjualan(
id_penjualan int not null PRIMARY KEY,
barang_id int FOREIGN KEY REFERENCES data_barang(id_barang),
pembeli_id int FOREIGN KEY REFERENCES data_pembeli(id_pembeli),
qty_pembelian int,
tanggal_pembelian datetime,
toko_id int FOREIGN KEY REFERENCES data_toko(id_toko)
);