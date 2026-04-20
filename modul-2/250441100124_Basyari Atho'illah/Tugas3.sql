UPDATE pasien
SET no_telepon = 6281336043575
WHERE id_pasien=1
--
UPDATE dokter
SET spesialisasi = Tenggorokan
WHERE id_dokter=1
--
DELETE FROM rekam_medis
WHERE id_rekam=1
