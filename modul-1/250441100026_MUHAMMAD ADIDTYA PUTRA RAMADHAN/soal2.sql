create database db_perusahaan;
use db_perusahaan;
create table pelanggan_langganan (
	nomer_identitas int
    );
alter table pelanggan_langganan
modify column nomer_identitas VARCHAR(20);
