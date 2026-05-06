-- Update No Telepon Pasien
UPDATE pasien SET no_telepon = '0899999999' WHERE id_pasien = 1;

-- Update Spesialisasi Dokter
UPDATE dokter SET spesialisasi = 'Spesialis Penyakit Dalam' WHERE
id_dokter = 1;