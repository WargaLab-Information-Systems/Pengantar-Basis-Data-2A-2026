SELECT m.nama_mahasiswa, mk.nama_mk, mk.sks 
FROM mahasiswa m 
JOIN krs k ON k.id_mahasiswa = m.id_mahasiswa 
JOIN mata_kuliah mk ON mk.id_mk = k.id_mk 
WHERE m.program_studi="Sistem Informasi" AND mk.sks > 2 
ORDER by mk.sks DESC, m.nama_mahasiswa asc 