CREATE DATABASE e_library;
USE e_library;

CREATE TABLE koleksi_langka (
	id_buku BIGINT PRIMARY KEY,
	judul VARCHAR (250),
	tahun_terbit YEAR,
	estimasi_harga DECIMAL(15,2)
);
DESCRIBE koleksi_langka;

INSERT INTO koleksi_langka VALUES 
(1,'Terbit', '2025', '10000,00'),
(2,'aku sukses', '2027', '10000,00'),
(3,'belajar css', '2027', '10000,00');
 
SELECT * FROM koleksi_langka

