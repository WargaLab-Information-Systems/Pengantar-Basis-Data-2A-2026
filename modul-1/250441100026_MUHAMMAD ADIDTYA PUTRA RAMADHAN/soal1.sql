create database db_perpustakaan;
use db_perpustakaan;
create table koleksi_langka (
    id_buku bigint,
    judul varchar(250) not null,
    tahun_terbit year,
    estimasi_harga decimal(19,4),
    primary key (id_buku)
);
show tables;
describe koleksi_langka;
