CREATE DATABASE klinik;
USE klinik;

CREATE TABLE dokter (
    id_dokter INT PRIMARY KEY,
    nama_dokter VARCHAR(100),
    spesialisasi VARCHAR(100)
);

CREATE TABLE pasien (
    id_pasien INT PRIMARY KEY,
    nama_pasien VARCHAR(100),
    tanggal_lahir DATE,
    no_telepon VARCHAR(12)
);

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis VARCHAR(255),
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE CASCADE
);

SHOW TABLES;
DESCRIBE rekam_medis;

INSERT INTO dokter VALUES (1, 'Dr. Andi', 'Umum');
INSERT INTO dokter VALUES (2, 'Dr. Budi', 'Gigi');
SELECT * FROM dokter;

INSERT INTO pasien VALUES (1, 'Siti Aminah', '1995-03-12', '08123456789');
INSERT INTO pasien VALUES (2, 'Rudi Hartono', '1990-07-25', '08234567890');
SELECT * FROM pasien;

INSERT INTO rekam_medis VALUES (1, 1, 2, '2026-04-01', 'Flu Ringan');
INSERT INTO rekam_medis VALUES (2, 2, 2, '2026-04-02', 'Sakit Gigi');
SELECT * FROM rekam_medis;

DELETE FROM dokter WHERE id_dokter=2;
SELECT * FROM rekam_medis;

DROP DATABASE klinik;
DROP TABLES rekam_medis;