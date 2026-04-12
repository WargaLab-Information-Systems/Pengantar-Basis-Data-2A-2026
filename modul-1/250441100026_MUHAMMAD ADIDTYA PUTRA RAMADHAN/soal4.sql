create database platform;
use platform;
create table umpan_balik (
    id_komentar bigint primary key AUTO_INCREMENT,
    isi_komentar text,
    kode_negara char(2)
    );
show tables;
describe umpan_balik;