SELECT m.nim, m.nama, SUM(mk.sks) AS Total_SKS
FROM mahasiswa m
JOIN krs k ON m.nim = k.nim
JOIN mata_kuliah mk ON k.kode_mk = mk.kode_mk
WHERE k.semester % 2 = 1
GROUP BY m.nim, m.nama;