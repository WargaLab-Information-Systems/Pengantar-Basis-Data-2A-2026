SELECT m.nama_mahasiswa, m.angkatan, mk.nama_mk, d.nama_dosen 
FROM mahasiswa m 
JOIN krs k ON k.id_mahasiswa = m.id_mahasiswa 
JOIN mata_kuliah mk ON k.id_mk = mk.id_mk 
JOIN dosen d ON mk.id_dosen = d.id_dosen 
WHERE m.angkatan BETWEEN 2023 and 2025 and d.nama_dosen IN ("Dr. 
Budi","Prof. Siti") 
ORDER by m.angkatan DESC 