-- tugas 2 --

CREATE DATABASE pelanggan_setia;
USE pelanggan_setia;

CREATE TABLE pelanggan_setia(
	nomor_identitas INT
);

DESCRIBE pelanggan_setia;

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);


SHOW TABLES;

-- tugas 3 --
CREATE TABLE transaksiharian(
id_transaksi INT,
total DECIMAL(10,2)
);

TRUNCATE TABLE transaksiharian;

DROP TABLE transaksiharian;
DESCRIBE transaksiharian;

-- tugas 4 --
CREATE TABLE umpanbalik(
id_feedback INT PRIMARY KEY AUTO_INCREMENT,
isi_komentar TEXT
);

DESCRIBE umpanbalik;
DROP umpanbalik;