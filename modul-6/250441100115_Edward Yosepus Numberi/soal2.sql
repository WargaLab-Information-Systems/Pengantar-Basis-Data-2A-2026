SELECT mk.kode_mk, mk.nama_mk
FROM mata_kuliah mk
JOIN krs k ON mk.kode_mk = k.kode_mk
JOIN mahasiswa m ON k.nim = m.nim
WHERE m.nama = 'Budi Santoso';