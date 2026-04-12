-- Tambah Dokter
INSERT INTO dokter (nama_dokter, spesialisasi) VALUES
('dr. Andi', 'Spesialis Anak'),
('dr. Budi', 'Spesialis Bedah');

-- Tambah Pasien
INSERT INTO pasien (nama_pasien, tanggal_lahir, no_telepon) VALUES
('Siti Aminah', '1995-05-20', '08123456789'),
('Budi Santoso', '1988-10-12', '08571234567');

-- Tambah Rekam Medis
INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa,
diagnosis) VALUES
(1, 1, '2023-10-01', 'Demam Ringan'),
(2, 2, '2023-10-02', 'Luka Sayat Ringan');

--Bagian yang error
INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa,
diagnosis)
VALUES (1, 99, '2023-10-03', 'Cek Rutin');