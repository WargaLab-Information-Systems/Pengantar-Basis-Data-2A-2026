CREATE TABLE transaksi_harian (
id_transaksi INT PRIMARY KEY,
total_bayar DECIMAL(10, 2)
);

TRUNCATE TABLE transaksi_harian;
DROP TABLE transaksi_harian;