USE nama_database;

CREATE TABLE transaksi_harian (
    id_transaksi BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_pelanggan BIGINT NOT NULL,
);

TRUNCATE TABLE transaksi_harian;

DROP TABLE transaksi_harian;