create database pelanggan;	
use pelanggan;
	create table pelanggan_setia (
		nomor_identitas int primary key
    );
alter table pelanggan_setia
modify column nomor_identitas varchar(20);


    