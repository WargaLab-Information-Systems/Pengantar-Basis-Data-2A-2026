UPDATE pasien
SET no_telepon = '081873274523'
WHERE id_pasien = 1;

UPDATE dokter
SET spesialisasi = 'Penyakit Dalam'
WHERE id_dokter = 1;
UPDATE dokter
SET nama_dokter = 'durian'
WHERE id_dokter = 2;

DELETE FROM rekam_medis
WHERE id_rekam = 2;

SELECT * FROM rekam_medis;
SELECT * FROM id_dokter;