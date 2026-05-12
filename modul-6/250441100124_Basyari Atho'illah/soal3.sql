SELECT m.nim, m.nama 
FROM mahasiswa m
JOIN nilai n ON n.nim=m.nim
WHERE EXISTS (SELECT * FROM nilai n WHERE n.nim=m.nim)
