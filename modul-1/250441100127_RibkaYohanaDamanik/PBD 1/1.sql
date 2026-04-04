USE db_bljr;

CREATE TABLE koleksi_langka (
    id_buku        BIGINT         NOT NULL AUTO_INCREMENT,
    judul          VARCHAR(250)   NOT NULL,
    tahun_terbit   YEAR           NOT NULL,
    estimasi_harga DECIMAL(20, 2) NOT NULL,
    
    CONSTRAINT pk_koleksi_langka PRIMARY KEY (id_buku)
);

DESC koleksi_langka;