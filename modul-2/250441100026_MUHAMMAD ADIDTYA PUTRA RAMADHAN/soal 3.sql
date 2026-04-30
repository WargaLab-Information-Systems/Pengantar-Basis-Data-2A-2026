UPDATE pasien 
SET no_telepon = '000123'
WHERE id_pasien = 1;
 
UPDATE dokter 
SET spesialisasi = 'Bedah'
WHERE id_dokter = 1;

select * from pasien;
select * from dokter;
select * from rekam_medis;

DELETE FROM rekam_medis 
WHERE id_rekam = 2; 