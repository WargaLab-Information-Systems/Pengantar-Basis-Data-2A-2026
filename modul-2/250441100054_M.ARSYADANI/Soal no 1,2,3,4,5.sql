CREATE DATABASE klinik;
USE klinik;

CREATE TABLE dokter (
  id_dokter    INT PRIMARY KEY,
  nama_dokter  VARCHAR(100),
  spesialisasi VARCHAR(50)
);

DESCRIBE dokter;

CREATE TABLE pasien (
  id_pasien      INT PRIMARY KEY,
  nama_pasien    VARCHAR(100),
  tanggal_lahir  DATE,
  no_telepon     VARCHAR(15)
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

INSERT INTO dokter VALUES
(1,'Dok.amir','Kanker'),
(2,'Dok.Arun','Operasi')
;

SELECT * FROM dokter;

INSERT INTO pasien VALUES
(1, 'Radit','2007-08-07','081332655742'),
(2, 'Amir','2008-07-05','081332655876')
;

SELECT * FROM pasien;

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2025-03-08','Kanker kepala'),
(2, 2, 2, '2025-03-09','Operasi ginjal')
;

SELECT * FROM rekam_medis;

INSERT INTO rekam_medis VALUES
(3, 3, 3, '2025-13-06','Kanker kepala')
;

UPDATE pasien
SET no_telepon = 081332655888 WHERE id_pasien = 1;

UPDATE pasien
SET tanggal_lahir = 0000-00-00 WHERE id_pasien = 2008-08-04;

SELECT * FROM pasien;

UPDATE dokter
SET spesialisasi = 'gigi' WHERE id_dokter = 1;

UPDATE rekam_medis
SET tanggal_periksa = 2025-03-09 WHERE id_rekam = 2;

SELECT * FROM dokter;

SELECT * FROM rekam_medis;

DELETE FROM rekam_medis
WHERE id_rekam = 1 ;

DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE CASCADE
);

INSERT INTO rekam_medis VALUES
(1, 1, 1, '04-01-2025', 'kanker otak'),
(2, 2, 1, '04-02-2025', 'sakit gigi');

DELETE FROM dokter
WHERE id_dokter = 1;

UPDATE rekam_medis
SET tanggal_periksa = '2025-04-05'
WHERE id_rekam = 1;

UPDATE rekam_medis
SET tanggal_periksa = '2025-04-03'
WHERE id_rekam = 2;

SELECT * FROM rekam_medis;

DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2025-04-01', 'Demam'),
(2, 2, 2, '2025-04-02', 'Flu');

TRUNCATE TABLE rekam_medis;

SELECT * FROM rekam_medis;

TRUNCATE TABLE pasien;

SELECT * FROM pasien;
SELECT * FROM dokter;

DROP TABLE pasien;
DROP TABLE dokter;

  DROP DATABASE klinik;