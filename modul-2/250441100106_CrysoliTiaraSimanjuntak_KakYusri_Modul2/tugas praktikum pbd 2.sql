-- TUGAS NO 1 --

CREATE DATABASE sistemklinik_basisdata
USE sistemklinik_basisdata

CREATE TABLE dokter (
    id_dokter INT PRIMARY KEY,
    nama_dokter VARCHAR(100),
    spesialisasi VARCHAR(100)
); 
DESCRIBE dokter;

CREATE TABLE pasien (
    id_pasien INT PRIMARY KEY,
    nama_pasien VARCHAR(100),
    tanggal_lahir DATE,
    no_telepon VARCHAR(15)
); 
DESCRIBE pasien;

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
DESCRIBE rekam_medis;

-- TUGAS NO 2 -- 

INSERT INTO dokter VALUES
(1, 'Dr. Andi', 'Umum'),
(2, 'Dr. Sinta', 'Gigi');
DESCRIBE dokter;

INSERT INTO pasien VALUES
(1, 'Budi', '2000-05-10', '08123456789'),
(2, 'Sari', '1999-08-21', '08234567890');
DESCRIBE pasien;

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2024-03-01', 'Flu'),
(2, 2, 2, '2024-03-02', 'Sakit Gigi');
DESCRIBE rekam_medis; 


SELECT*FROM dokter;
SELECT*FROM pasien;
SELECT*FROM rekam_medis;

-- Tugas No 3--
UPDATE pasien
SET no_telepon = '08999999999'
WHERE id_pasien = 1; 
DESCRIBE pasien

UPDATE dokter
SET spesialisasi = 'Penyakit Dalam'
WHERE id_dokter = 1;
DESCRIBE dokter

DELETE FROM rekam_medis
WHERE id_rekam = 1;
DESCRIBE rekam_medis

SELECT*FROM pasien;
SELECT*FROM dokter;
SELECT*FROM rekam_medis;

-- Tugas No 4 --
DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis VARCHAR(255),

    FOREIGN KEY (id_pasien)
        REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT,

    FOREIGN KEY (id_dokter)
        REFERENCES dokter(id_dokter)
        ON DELETE CASCADE
);

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2026-04-01', 'Demam'),
(2, 2, 1, '2026-04-02', 'Flu');

DELETE FROM dokter
WHERE id_dokter = 1;

SELECT * FROM rekam_medis;
SELECT*FROM dokter;

-- Soal No 5 --
DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis VARCHAR(255),

    FOREIGN KEY (id_pasien)
        REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT,

    FOREIGN KEY (id_dokter)
        REFERENCES dokter(id_dokter)
        ON DELETE RESTRICT
);

INSERT INTO rekam_medis VALUES
(1, 1, 2, '2026-04-01', 'Batuk'),
(2, 2, 2, '2026-04-02', 'Demam');

TRUNCATE TABLE rekam_medis;