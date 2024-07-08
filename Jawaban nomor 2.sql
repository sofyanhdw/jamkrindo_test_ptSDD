CREATE PROCEDURE proc_penjualan
AS
BEGIN

select 
	a.nama_barang,
	b.nama_pembeli,
	b.nomor_hp_pembeli,
	c.qty_pembelian,
	c.tanggal_pembelian,
	d.nama_toko,
	d.alamat_toko,
	d.lokasi_toko

	from data_penjualan as c 
	inner join data_barang as a on c.barang_id = a.id_barang
	inner join data_pembeli as b on c.pembeli_id = b.id_pembeli
	inner join data_toko as d on c.toko_id = d.id_toko;
	
END

EXEC proc_penjualan

CREATE TRIGGER trigPenjualan
ON data_penjualan AFTER INSERT AS BEGIN
PRINT 'Berhasil di input'
END
RETURN

