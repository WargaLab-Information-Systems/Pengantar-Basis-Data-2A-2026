SELECT mk.kode_mk, mk.nama_mk
FROM mahasiswa m
JOIN krs k ON k.nim = m.nim
JOIN mata_kuliah mk on k.kode_mk = mk.kode_mk
WHERE m.nama = "Budi Santoso"
