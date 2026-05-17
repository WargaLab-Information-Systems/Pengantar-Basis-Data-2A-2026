SELECT m.nama_mahasiswa, k.id_mk 
FROM mahasiswa m 
LEFT JOIN krs k ON k.id_mahasiswa = m.id_mahasiswa 