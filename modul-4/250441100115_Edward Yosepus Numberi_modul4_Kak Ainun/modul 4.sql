CREATE DATABASE modul_4;
USE modul_4;

CREATE TABLE kategori (
id_kategori INT PRIMARY KEY,
nama_kategori VARCHAR(50)
);

CREATE TABLE produk (
id_produk INT PRIMARY KEY,
nama_produk VARCHAR(100),
harga INT,
id_kategori INT,
FOREIGN KEY (id_kategori)
REFERENCES kategori(id_kategori)
);

CREATE TABLE transaksi (
id_transaksi INT PRIMARY KEY,
id_produk INT,
jumlah INT,
FOREIGN KEY (id_produk)
REFERENCES produk(id_produk)
);

INSERT INTO kategori VALUES
(1, 'laptop'),
(2, 'smartphone'),
(3, 'Aksesoris');

SELECT * FROM kategori;

INSERT INTO produk VALUES
(101,'Laptop Asus',8500000,1),
(102,'Laptop Lenovo',7500000,1),
(103,'iPhone 13',12000000,2),
(104,'Mouse Logitech',150000,3),
(105,'Keyboard Gaming',500000,3);

INSERT INTO transaksi VALUES
(1,101,2),
(2,104,5),
(3,103,1),
(4,105,3);

SELECT nama_produk, harga,nama_kategori
FROM produk AS p
INNER JOIN kategori AS t
ON p.id_kategori = t.id_produk;

ALTER TABLE kategori
RENAME COLUMN nama_kategori TO nama;

SELECT produk.nama, kategori.nama, t.jumlah
FROM produk AS p
INNER JOIN kategori AS k
ON produk.id_kategori = kategori.id_kategori;
JOIN trasaksi AS t
ON produk.id_produk = trasaksi.is produk
