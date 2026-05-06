CREATE TABLE dokter (
    id_dokter INT PRIMARY KEY,
    nama_dokter VARCHAR(100) NOT NULL,
    spesialisasi VARCHAR(100) NOT NULL
);


CREATE TABLE pasien (
    id_pasien INT PRIMARY KEY,
    nama_pasien VARCHAR(100) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    no_telepon VARCHAR(15)
);


CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE NOT NULL,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter)
        ON DELETE RESTRICT
);


-- # kode sql SOAL no 2#
INSERT INTO dokter (id_dokter, nama_dokter, spesialisasi) VALUES
(1, 'Dr. Andi', 'Umum'),
(2, 'Dr. Siti', 'Gigi');

INSERT INTO pasien (id_pasien, nama_pasien, tanggal_lahir, no_telepon) VALUES
(1, 'Budi Santoso', '1990-05-10', '08123456789'),
(2, 'Ani Lestari', '1995-08-15', '08234567890');

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1, 1, 1, '2026-04-01', 'Demam'),
(2, 2, 2, '2026-04-02', 'Sakit gigi');


-- #KODE SQL SOAL NO 3#
UPDATE pasien
SET no_telepon = '08987654321'
WHERE id_pasien = 1;

-- #UPDATE SPESIALIS#
UPDATE dokter
SET spesialisasi = 'Penyakit Dalam'
WHERE id_dokter = 1;

-- #HAPUS REKAM MEDIS
DELETE FROM rekam_medis
WHERE id_rekam = 1;

-- #KODE SQL SOAL NO 4#
CREATE TABLE rekam_medis2 (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE NOT NULL,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter)
        ON DELETE CASCADE
);

-- #tambah data
INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1, 1, 1, '2026-04-01', 'Demam'),
(2, 2, 1, '2026-04-02', 'Flu');

-- #Hapus dokter
DELETE FROM dokter
WHERE id_dokter = 1;


-- #KODE SOAL SQL 5#
CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE NOT NULL,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter)
        ON DELETE RESTRICT
);
INSERT INTO rekam_medis VALUES
(1, 1, 2, '2026-04-01', 'Demam'),
(2, 2, 2, '2026-04-02', 'Flu');
SELECT * FROM rekam_medis;
TRUNCATE TABLE rekam_medis;
TRUNCATE TABLE pasien;