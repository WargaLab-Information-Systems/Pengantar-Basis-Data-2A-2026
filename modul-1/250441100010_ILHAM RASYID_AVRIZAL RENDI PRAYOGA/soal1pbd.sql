-- CREATE DATABASE Librari;
-- USE Librari;
-- CREATE TABLE koleksi_langka (
--     id_buku BIGINT UNSIGNED AUTO_INCREMENT,
--     judul VARCHAR(250) NOT NULL,
--     tahun_terbit YEAR,
--     estimasi_harga DECIMAL(19, 4),
--     PRIMARY KEY (id_buku)
-- );
-- SHOW TABLES;
-- DESCRIBE koleksi_langka


-- CREATE DATABASE perusahaan;
-- USE perusahaan;
-- CREATE TABLE pelanggan_setia (
--     nomor_identitas INT
--     );
-- SHOW TABLES;
-- DESCRIBE pelanggan_setia;

-- ALTER TABLE pelanggan_setia 
-- MODIFY COLUMN nomor_identitas VARCHAR(20);


-- CREATE DATABASE transaksi;
-- USE transaksi;
-- CREATE TABLE transaksi_harian (
--     id_transaksi INT,
--     jumlah_bayar DECIMAL(10, 2)
--     );
-- SHOW TABLES;
-- DESCRIBE transaksi_harian;
-- TRUNCATE TABLE transaksi_harian;

-- DROP TABLE transaksi_harian;

-- CREATE DATABASE platform;
-- USE platform;
-- CREATE TABLE umpan_balik (
--     id_komentar BIGINT PRIMARY KEY AUTO_INCREMENT,
--     isi_komentar TEXT,
--     kode_negara CHAR(2)
--     );
-- SHOW TABLES;
-- DESCRIBE umpan_balik;
