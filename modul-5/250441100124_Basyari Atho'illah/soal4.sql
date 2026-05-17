SELECT m.nim, SUM(mk.sks) 
FROM mahasiswa m 
JOIN krs k ON m.nim=k.nim 
JOIN mata_kuliah mk on mk.kode_mk=k.kode_mk 
GROUP BY m.nim 
HAVING SUM(sks) > 5