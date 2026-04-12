DROP TABLE rekam_medis;
CREATE TABLE rekam_medis (
 id_rekam INT PRIMARY KEY AUTO_INCREMENT,
 id_pasien INT,
 id_dokter INT,
tanggal_periksa DATE,
 diagnosis TEXT,
 FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON
DELETE RESTRICT,
 FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON
DELETE CASCADE
);

-- Isi ulang data (Contoh: 2 rekam medis untuk dr. Budi id=2)
INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa,
diagnosis) VALUES
(1, 2, '2023-10-05', 'Flu'),
(2, 2, '2023-10-06', 'Batuk');

-- Hapus Dokter Budi
DELETE FROM dokter WHERE id_dokter = 2;

-- Cek hasil
SELECT * FROM rekam_medis;