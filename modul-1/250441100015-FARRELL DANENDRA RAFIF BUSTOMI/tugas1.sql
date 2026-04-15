CREATE TABLE koleksi_langka (
    id_buku BIGINT PRIMARY KEY AUTO_INCREMENT,
    judul VARCHAR(250) NOT NULL,
    tahun_terbit YEAR NOT NULL,
    estimasi_harga decimal(15, 2) NOT NULL
);