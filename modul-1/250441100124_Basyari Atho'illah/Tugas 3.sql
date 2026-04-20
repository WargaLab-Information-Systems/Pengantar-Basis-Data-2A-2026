CREATE TABLE transaksi_harian(
    id_trans INT PRIMARY KEY,
    nama_transaksi varchar(255)
);
INSERT INTO transaksi_harian (id_trans, nama_transaksi) VALUES ('1', 'penjualan')
TRUNCATE TABLE transaksi_harian;
INSERT INTO transaksi_harian (id_trans, nama_transaksi) VALUES ('1', 'penjualan')
DROP TABLE transaksi_harian;
