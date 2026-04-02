create database koleksi_langka;
use koleksi_langka;
create table koleksi_langka (
	id_buku bigint primary key,
    judul varchar(250),
    tahun_terbit year,
    estimasi_harga decimal(18,2)
);
show tables;
describe koleksi_langka;
