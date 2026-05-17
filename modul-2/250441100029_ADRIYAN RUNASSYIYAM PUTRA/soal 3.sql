UPDATE pasien
SET no_telepon = '8293748923';
WHERE id_rekam = 1;

UPDATE dokter
SET spesialisasi = 'kandungan'
WHERE id_dokter = 1;

select * from dokter;
select * from pasien;
select * from rekam_medis;

DELETE FROM rekam_medis
WHERE id_rekam = 1;