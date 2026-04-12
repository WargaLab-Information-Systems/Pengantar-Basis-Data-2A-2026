create database db_perusahaan;
use db_perusahaan;
create table pelanggan_pelanggan (
	nomer_identitas int 
	);
show tables;
describe pelanggan_pelanggan;

alter table pelanggan_pelanggan
modify column nomer_identitas VARCHAR (20);
describe pelanggan_pelanggan;
