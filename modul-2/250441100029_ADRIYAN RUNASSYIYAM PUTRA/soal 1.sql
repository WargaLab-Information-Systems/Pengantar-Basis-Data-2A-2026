create DATABASE kliniksehat;
use kliniksehat;

CREATE TABLE dokter(
	id_dokter int primary key,
    nama_dokter varchar(100),
    spesialisasi varchar(100)
);

CREATE TABLE pasien(
	id_pasien int primary key,
    nama_pasien varchar(100),
    tanggal_lahir date,
    no_telepon varchar (15)
);


CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);
show tables;