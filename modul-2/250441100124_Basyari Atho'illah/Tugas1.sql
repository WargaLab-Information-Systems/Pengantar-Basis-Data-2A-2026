--- buat tabel doket ---
CREATE TABLE dokter (
    id_dokter INT PRIMARY KEY,
    nama_dokter VARCHAR(150),
    spesialisasi VARCHAR(150)
);

--- tabel pasien ---
CREATE TABLE pasien (
    id_pasien INT PRIMARY KEY,
    nama_pasien VARCHAR(150),
    tanggal_lahir DATE,
    no_telepon VARCHAR(15)
);

--tabel rekam_medis—
CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT,
        
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter)
        ON DELETE RESTRICT
);
